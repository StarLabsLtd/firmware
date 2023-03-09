## Troubleshooting

If you see a message `Message recipient disconnected from message bus without replying`, you'll need to add the `iomem=relaxed` kernel parameter. The two below commands will do this for you:

```
sudo sed -i 's/quiet/quiet iomem=relaxed/g' /etc/default/grub
sudo update-grub
```

If you see a message that says the version numbers don't match, please use:

```
fwupdmgr update --force
```
