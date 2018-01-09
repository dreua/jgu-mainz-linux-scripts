The easy way
=====

The easiest and most reliable way for printing at JGU is using the
"Web print" funktion on
[https://drucken.zdv.net/](https://drucken.zdv.net/).

I recommend converting your files to PDF first.


The hard way (work in progress - help welcome)
=====
[Official guide (German)](https://www.zdv.uni-mainz.de/zdv-drucker-unter-linux-einrichten/)

[Official guide (English)](https://www.en-zdv.uni-mainz.de/configure-printer-with-linux/)

What I did to make it work:

Change URL to `//jgu-ps-1.zdv.net/Drucken`

Testing the connection
---
Because installing and changing printers is a sometimes hard to debug, 
I suggest testing the connection via smb first:

    smbclient //jgu-ps-1.zdv.net/Drucken --user=UNI-MAINZ/yourusername

You should be asked for your password - enter it.

If you get a prompt (`smb: \>`) the connection and 
authentication is working.


Installing a printer
-----
*From now on this guide is not tested, please raise an issue if you 
find mistakes or if you need help, so I can help you and fix the guide.*

Follow the official guide but change the URL like described above.

Prompt for Password / Bug
-----
`system-config-printer-applet` is in needed to ask for credentials but not
very reliable, running it in another shell and/or restarting it (or the whole computer)
might be necessary.

Remeber to enter **UNI-MAINZ/yourusername** as username.

I chose to store the password and that works fine for me but I don't know where or how
secure the password is stored.

Additionaly there is a bug which renders it unusable for quite some applications:
https://bugzilla.redhat.com/show_bug.cgi?id=757755

Does work:
 - Evince (Gnome PDF viewer)
 
 
Does not work:
 - LibreOffice

Color / Monochrome
-----
TODO
