# Install USB
the folder ```sources\$OEM$\$1\install``` ends up at ```C:\install```

the folder ```sources\$OEM$\$$\install``` ends up at ```C:\Windows\install```

https://dellwindowsreinstallationguide.com/the-oem-folder/

# Aktivate

### Remove Key
- ``slmgr /upk``
- ``slmgr /dlv``

### Add new Key
- ``slmgr /ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX``
- ``slmgr /ato``
- ``slmgr /dlv``

Get BIOS Windows Key: ``wmic path softwareLicensingService get OA3xOriginalProductKey``
