:: replace PREFIX with the contents of the env var %PREFIX%
set build_template="%RECIPE_DIR%\build_windows.conf"
set build_target="build.conf"
powershell -Command "(Get-Content -path %build_template% -Raw) -replace 'PREFIX','%PREFIX%' | Set-Content -Path %build_target%"
:: debug
powershell -Command "Get-Content %build_target%"

%PYTHON% setup.py install --single-version-externally-managed --record=record.txt
