%PYTHON% -c "with open(r'%RECIPE_DIR%\build_windows.conf', 'r+') as f: c = f.read(); f.seek(0); f.write(c.replace('PREFIX', '%PREFIX%'))"

%PYTHON% setup.py install --configfile=%RECIPE_DIR%\build_windows.conf --single-version-externally-managed --record=record.txt
