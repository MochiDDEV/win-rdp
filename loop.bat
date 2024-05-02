@echo off
echo CREATE RDP SUCCESSFULL!
tasklist | find /i "ngrok.exe" >Nul && goto check || echo "Unable to get NGROK tunnel, make sure NGROK_AUTH_TOKEN is correct in Settings > Secrets > Repository secret. Maybe your previous VM is still running: https://dashboard.ngrok.com/cloud-edge/endpoints" & ping 127.0.0.1 >Nul & exit
:check
ping 127.0.0.1 > null
cls
echo "Spawn! $date"
goto check
