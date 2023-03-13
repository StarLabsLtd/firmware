Improved the reliability of DC Jack charging by modifying it to 800MHz, 3A
Avoided charging stalling by continuously polling the SMBus after overcharge protection is active
Exposed the behavior of overcharge protection to APCI
Set the charge LED to purple when overcharge protection is active
Modified fan curve
Ensured the trackpad is in the desired state by polling its state every 10ms
Set the brightness of the keyboard backlight to the maximum
Streamlined the system by removing unused SMM events
