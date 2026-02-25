@echo off
setlocal enabledelayedexpansion

:: --- CONFIGURAÇÃO ---
:: Este é o ID do chip FTDI da placa DETPIC32 (nunca muda)
set "TARGET_VID_PID=0403:6001"
:: --------------------

echo [INFO] A procurar a placa DETPIC32 (ID: %TARGET_VID_PID%)...

:: 1. Procura na lista do usbipd a linha que tem o ID da placa
:: O comando 'for' extrai o primeiro token (o BUSID) dessa linha
set "FOUND_BUSID="
for /f "tokens=1" %%a in ('usbipd list ^| findstr "%TARGET_VID_PID%"') do (
    set "FOUND_BUSID=%%a"
)

:: 2. Verifica se encontrou alguma coisa
if "%FOUND_BUSID%"=="" (
    echo.
    echo [ERRO] Placa nao encontrada!
    echo ---------------------------------------------------
    echo 1. Verifica se o cabo USB esta bem ligado.
    echo 2. Verifica se a luz da placa acendeu.
    echo ---------------------------------------------------
    pause
    exit /b
)

echo [SUCESSO] Placa encontrada no BUSID: %FOUND_BUSID%
echo.

:: 3. Tenta fazer o bind (caso tenhas mudado de porta e nao esteja partilhada)
:: O '2>nul' esconde o erro se ja estiver partilhada
echo [INFO] A garantir que a porta esta partilhada (Bind)...
usbipd bind --busid %FOUND_BUSID% --force 2>nul

:: 4. Faz o attach para o WSL
echo [INFO] A ligar ao WSL...
usbipd attach --wsl --busid %FOUND_BUSID%

if %errorlevel% equ 0 (
    echo.
    echo [OK] A placa esta ligada ao Linux! Podes programar.
) else (
    echo.
    echo [FALHA] Algo correu mal. Tenta executar este ficheiro como Administrador.
)

pause