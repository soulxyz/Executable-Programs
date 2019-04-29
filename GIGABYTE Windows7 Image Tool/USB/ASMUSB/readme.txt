************************************************************
************************************************************
*  Installation Readme for Asmedia USB Host Controller Drive.
*
*  Refer to the system requirements for the operating systems
*  supported by Asmedia USB Host Controller Drive.
*
************************************************************
************************************************************

************************************************************
*  CONTENTS OF THIS DOCUMENT
************************************************************

This document contains the following sections:

1.  Overview
2.  System Requirements
3.  Installing the Software
4.  Verifying Installation of the Software
5.  Identifying the Software Version Number
6.  Uninstalling the Software
7.  Manual Installation

************************************************************
* 1.  OVERVIEW
************************************************************

The Asmedia USB Host Controller Drive is designed to provide 
functionality for the following USB Host Controllers:

	- Asmedia USB Host Controller

Software installation is flexible and fully automated.

************************************************************
* 2.  SYSTEM REQUIREMENTS
************************************************************

1.  The system must contain one of the following ASMedia products:

	- Asmedia USB Host Controller	 

2.  The system must be running on one of the following
    operating systems:
    - Microsoft* Windows* Server 2003 
    - Microsoft* Windows* Server 2003 x64 Edition  
    - Microsoft* Windows* Vista
    - Microsoft* Windows* Vista x64 Edition
    - Microsoft* Windows* Server 2008
    - Microsoft* Windows* Server 2008 x64 Edition
    - Microsoft* Windows* Win7
    - Microsoft* Windows* Win7 x64 Edition	  	  
    - Microsoft* Windows* Win8
    - Microsoft* Windows* Win8 x64 Edition
    - Microsoft* Windows* Win8.1
    - Microsoft* Windows* Win8.1 x64 Edition
    - Microsoft* Windows* Server 2012 R2 x64 Edition
    - Microsoft* Windows* Win10
    - Microsoft* Windows* Win10 x64 Edition

3. The following operating systems are not supported:

    Any version of the following Microsoft operating systems:
    - MS-DOS
    - Windows 3.1
    - Windows NT 3.51
    - Windows 95
    - Windows 98
    - Windows Millennium Edition (Me)
    - Windows NT 4.0
    - Windows 2000 Datacenter Server

    Any version of the following operating systems:
    - Linux
    - UNIX
    - BeOS
    - MacOS
    - OS/2

4.  The system should contain at least the minimum system 
    memory required by the operating system.

************************************************************
* 3.  INSTALLING THE SOFTWARE
************************************************************

1. Install from setup program
     Double click the setup.exe and follow the setup wizard steps to
   install the Asmedia USB Host controller driver

2. Silent Install/Uninstall
     All dialogue box will not display when Silent Install/Uninstall

     install:		setup.exe /s /v/qn   

     uninstall:		setup.exe /s /x /v/qn

Notes:  Flags and their parameters are not case-sensitive.  

************************************************************
* 4.  VERIFYING INSTALLATION OF THE SOFTWARE
************************************************************

1.  On the Start menu, select 'Control Panel'

2.  Open on the 'System' applet (you may first 
      have to select 'Switch to Classic View')
    
3.  Select the 'Hardware' tab

4.  Select the 'Device Manager' button.

5.  For Vista, Server 2003, Server 2008, Win7, Win8, Win8.1, Win10
			Expand the 'Universal Serial Bus Controllers' entry

6.  Right-click on 'ASMedia USB3.0 eXtensible Host Controller' or 'ASMedia USB3.1 eXtensible Host Controller'

7.  Select 'Properties'

8.  Select the 'Driver' tab

9.  Select the 'Driver Details' button

10. follow file shoud displayed, then installation was 
		successful:
		
		-'system32\DRIVERS\asmtxhci.sys' for Vista, Server2003, Server 2008, Win7, Win8, Win8.1 and Win10
		
************************************************************
* 5.  IDENTIFYING THE SOFTWARE VERSION NUMBER
************************************************************


1.  On the Start menu, select Control Panel.

2.  Open on the 'System' applet (you may first  have to select
    'Switch to Classic View').
    
3.  Select the 'Hardware' tab 

4.  Select the 'Device Manager' button

5.  For Vista, Server 2003, Server 2008, Win7, Win8, Win8.1 and Win10
			Expand the 'Universal Serial Bus Controllers' entry
		
6.  Right-click on 'ASMedia USB3.0 eXtensible Host Controller' or 'ASMedia USB3.1 eXtensible Host Controller'

7.  Select 'Properties'

8.  Select the 'Driver' tab

9.  The software version is displayed after 'Driver Version'

************************************************************
* 6.  UNINSTALLING THE SOFTWARE
************************************************************

9. UNINSTALLATION NON-DRIVER COMPONENTS
	Removal of this software from the system will render any 
	USB devices inaccessible by the operating system;
	therefore, uninstallation procedure will only uninstall 
	non-critical components of this software (user interface, 
	start menu links, etc.). 

Use the following procedure to uninstall the software:

1. Select 'Uninstall' from the following steps:
		- Go to "Start"  
		- Select "Control Panel" 
		- Select "Add or Remove Programs"
		- Find "Asmedia USB Host Controller Driver",
		  select it and click the "Remove" button.
	
	 you can also use the following procedure to unisntall the
	 software:
	 	- Go to "Start"
	 	- Select "Program"
	 	- Select "Asmedia Technology"
	 	- Select "Asmedia USB Host Driver"
	 	- Click shortcut "uninstall"

2. The uninstall program will start. Click through the
   options for the uninstallation.

************************************************************
* 7.  Manual Installation
************************************************************
Manual installation is to install driver by the installation file (INF) rather than use the "setup.exe" mentioned above. If you have installed older drivers, follow these two steps. If this is the first installation , skip the first step.


1. Uninstall old version driver:
   Open Device Manager, expand the Universal Serial Bus controllers tree list.
   Select the "ASMedia USB Root Hub" or "USB Root Hub",and click right button, execute the menu item Uninstall, Select the "Delete the driver software for this device." option, and click OK button. 
   Then select the "ASMedia USB 3.0 eXtensible Host Controller",and click right button, execute the menu item Uninstall, Select the "Delete the driver software for this device." option, and click OK button.

2. Install new version driver:
   Open Device Manager, expand the Universal Serial Bus controllers tree list.
   Select the "ASMedia USB 3.0 eXtensible Host Controller", and click right button, execute the menu item Update driver..., and follow the direction to indicate the path of INF file.
   Select the "ASMedia USB Root Hub", and click right button, execute the menu item Update driver..., and follow the direction to indicate the path of INF file.

NOTE¡G

Manual installation is a kind of method of installation by advanced user. Generic users please use the "setup.exe" to install driver.

************************************************************

* Third-party brands and names may be claimed as the 
  property of others.

Copyright (c) ASMedia Technology, 2015
************************************************************

