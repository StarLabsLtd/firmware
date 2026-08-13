#include <Uefi.h>
#include <Protocol/ShellParameters.h>

#define SERIAL_VARIABLE_ATTRIBUTES \
	(EFI_VARIABLE_NON_VOLATILE | EFI_VARIABLE_BOOTSERVICE_ACCESS | \
	 EFI_VARIABLE_RUNTIME_ACCESS)

static EFI_GUID cfr_guid = {
	0xceae4c1d, 0x335b, 0x4685,
	{ 0xa4, 0xa0, 0xfc, 0x4a, 0x94, 0xee, 0xa0, 0x85 }
};

static EFI_GUID shell_parameters_guid = EFI_SHELL_PARAMETERS_PROTOCOL_GUID;

static VOID print(EFI_SYSTEM_TABLE *system_table, CHAR16 *message)
{
	system_table->ConOut->OutputString(system_table->ConOut, message);
}

static EFI_STATUS parse_serial(const CHAR16 *arg, UINT32 *serial)
{
	UINT32 value = 0;

	if (!arg || !*arg)
		return EFI_INVALID_PARAMETER;

	while (*arg) {
		UINT32 digit;

		if (*arg < L'0' || *arg > L'9')
			return EFI_INVALID_PARAMETER;

		digit = *arg - L'0';
		if (value > (0xffffffffU - digit) / 10)
			return EFI_INVALID_PARAMETER;
		value = value * 10 + digit;
		arg++;
	}

	if (!value)
		return EFI_INVALID_PARAMETER;

	*serial = value;
	return EFI_SUCCESS;
}

EFI_STATUS EFIAPI efi_main(EFI_HANDLE image, EFI_SYSTEM_TABLE *system_table)
{
	EFI_SHELL_PARAMETERS_PROTOCOL *shell_parameters;
	EFI_STATUS status;
	UINT32 serial;
	UINT32 readback = 0;
	UINT32 attributes = 0;
	UINTN size = sizeof(readback);

	status = system_table->BootServices->HandleProtocol(
		image, &shell_parameters_guid, (VOID **)&shell_parameters);
	if (EFI_ERROR(status) || shell_parameters->Argc != 2) {
		print(system_table, L"Usage: set-serial 12345\r\n");
		return EFI_INVALID_PARAMETER;
	}

	status = parse_serial(shell_parameters->Argv[1], &serial);
	if (EFI_ERROR(status)) {
		print(system_table,
		      L"Serial must be a non-zero decimal value no larger than 4294967295.\r\n");
		return status;
	}

	status = system_table->RuntimeServices->SetVariable(
		L"serial_number", &cfr_guid, SERIAL_VARIABLE_ATTRIBUTES,
		sizeof(serial), &serial);
	if (EFI_ERROR(status)) {
		print(system_table, L"Failed to set serial number.\r\n");
		return status;
	}

	status = system_table->RuntimeServices->GetVariable(
		L"serial_number", &cfr_guid, &attributes, &size, &readback);
	if (EFI_ERROR(status) || size != sizeof(readback) ||
	    attributes != SERIAL_VARIABLE_ATTRIBUTES || readback != serial) {
		print(system_table, L"Serial number readback failed.\r\n");
		return EFI_DEVICE_ERROR;
	}

	print(system_table, L"Serial number set. Restart to apply it.\r\n");
	return EFI_SUCCESS;
}
