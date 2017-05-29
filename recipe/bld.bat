powershell -Command "get-content %RECIPE_DIR%\build_windows.conf | %{$_ -replace 'PREFIX','%PREFIX%'}"

%PYTHON% setup.py install --configfile=%RECIPE_DIR%\build_windows.conf --single-version-externally-managed --record=record.txt
