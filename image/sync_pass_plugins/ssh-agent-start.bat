@echo off
SET PATH=%CD%\;%PATH%
sc \\localhost create ssh-agent DisplayName= "OpenSSH Authentication Agent" binpath= "%CD%\ssh-agent.exe" type= own start= "demand"
sc \\localhost config ssh-agent obj= LocalSystem
sc \\localhost sdset ssh-agent "D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;IU)(A;;CCLCSWLOCRRC;;;SU)(A;;RP;;;AU)S:(AU;FA;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;WD)"
sc \\localhost privs ssh-agent SeImpersonatePrivilege
ssh-agent
pause
