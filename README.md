
╭━━━╮╱╱╱╱╱╱╱╱╱╱╱╱╱╭╮╱╭╮╱╱╱╱╱╭━━━╮╱╱╱╱╱╭╮
╰╮╭╮┃╱╱╱╱╱╱╱╱╱╱╱╱╱┃┃╱┃┃╱╱╱╱╱┃╭━━╯╱╱╱╱╱┃┃
╱┃┃┃┣━━┳╮╭┳━━┳┳━╮╱┃┃╱┃┣━╮╱╱╱┃╰━━┳╮╭┳━━┫┃╭┳━━┳━╮
╱┃┃┃┃╭╮┃╰╯┃╭╮┣┫╭╮╮┃┃╱┃┃╭╮┳━━┫╭━━┫┃┃┃╭━┫╰╯┫┃━┫╭╯
╭╯╰╯┃╰╯┃┃┃┃╭╮┃┃┃┃┃┃╰━╯┃┃┃┣━━┫┃╱╱┃╰╯┃╰━┫╭╮┫┃━┫┃
╰━━━┻━━┻┻┻┻╯╰┻┻╯╰╯╰━━━┻╯╰╯╱╱╰╯╱╱╰━━┻━━┻╯╰┻━━┻╯

A useful tool to bypass certain restrictions by group policy

With the help of this tool, you'll be able to change blocked settings without resorting to regedit, or group policy

# Features:
  1. Enable Mobile Hotspot
  2. Disable defender 
  3. Change DNS IP
 
 If you experience any issues, there are settings to re-enable restrictions on certain parts of windows
 
# Info

## Enable mobile hotspot 

  The mobile hotspot function is probably disabled by the domain,
  which is why you're using this program.
  This program deletes a reg key called
  HKLM\SOFTWARE\Policies\Microsoft\Windows\Network Connections\NC_ShowSharedAccessUI
  which re-enables the hotspot feature.
                                                                                    

 ## Disable defender
  For some reason, domains use super strict windows defender policies,
  which means that certain programs are completely blocked from being
  on your pc.
  This program disables it with a reg key called
  HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\DisableAntiSpyware
                                                                                   

 ## Change dns
  This option changes the DNS ip to 8.8.8.8, which can sometimes bypass the domain
   from resetting some settings.
                                                                                   
