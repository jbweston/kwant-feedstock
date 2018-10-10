:: replace PREFIX with the contents of the env var %PREFIX%
set build_template="%RECIPE_DIR%\build_windows.conf"
set build_target="build.conf"
powershell -Command "(gc  %build_template%) -replace PREFIX, %PREFIX% | Out-File %build_target% -encoding utf8"

%PYTHON% setup.py install --single-version-externally-managed --record=record.txt
