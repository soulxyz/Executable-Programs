@echo off
title Windows Server 2019 Standard 激活
@echo Windows Server 2019 Standard 激活，按任意键继续！
pause
slmgr /upk
slmgr /ipk N69G4-B89J2-4G8F4-WWYCC-J464C
slmgr /skms zh.us.to
slmgr /ato
@echo 激活完成，请检查是否激活成功！
pause
exit