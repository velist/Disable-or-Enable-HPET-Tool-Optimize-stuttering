@echo off
SETLOCAL EnableDelayedExpansion

REM Enable HPET
reg add "HKLM\SYSTEM\CurrentControlSet\Control\TimeProfile\TimeProviders\HPET" /v Profile /t REG_DWORD /d 1 /f

if %ERRORLEVEL% == 0 (
    echo [操作成功] HPET已成功启用。请重启计算机以使更改生效。
    echo [Operation Succeeded] HPET has been successfully enabled. Please restart your computer for the changes to take effect.
    echo.
    echo 您需要在方便的时候手动重启计算机。
    echo You will need to restart your computer manually when it is convenient for you.
    echo.
    echo 按任意键退出...
    echo Press any key to exit...
    pause >nul
) else (
    echo [操作失败] 启用HPET失败。请检查您的权限或注册表设置。
    echo [Operation Failed] Failed to enable HPET. Please check your permissions or registry settings.
    echo.
    echo 按任意键退出...
    echo Press any key to exit...
    pause >nul
)

ENDLOCAL