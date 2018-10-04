#Code By JerryZhao
#2018/10/02
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -ArgumentList $arguments -Verb runAs
	Exit
}
Write-Host "正在更新HOSTS..."
Add-Content -Path "C:\Windows\System32\drivers\etc\hosts" -Value "
# Commonapp Start
54.243.116.198 www.commonapp.org
13.35.121.58 apply.commonapp.org
54.230.108.221 app.commonapp.org
# Commonapp End
" -Force
Sleep(0.5)
Write-Host "更新完成"
Sleep(0.5)
Pause
Exit