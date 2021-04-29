SET OSGEO4W_ROOT=C:\OSGeo4W64
call %OSGEO4W_ROOT%\bin\o4w_env.bat"
call py3_env.bat
call qt5_env.bat

path %OSGEO4W_ROOT%\apps\qgis\bin;%PATH%
set QGIS_PREFIX_PATH=%OSGEO4W_ROOT:\=/%/apps/qgis
set GDAL_FILENAME_IS_UTF8=YES
rem Set VSI cache to be used as buffer, see #6448
set VSI_CACHE=TRUE
set VSI_CACHE_SIZE=1000000
set QT_PLUGIN_PATH=%OSGEO4W_ROOT%\apps\qgis-dev\qtplugins;%OSGEO4W_ROOT%\apps\qt5\plugins
set PYTHONPATH=%OSGEO4W_ROOT%\apps\qgis\python;%PYTHONPATH%
rem "%PYTHONHOME%\python" %*
rem SET PYCHARM="C:\Program Files\JetBrains\PyCharm 2017.3.4\bin\pycharm.exe"
rem "C:\Users\xlinfr\AppData\Local\Programs\Microsoft VS Code\Code.exe"
start /d "C:\Users\xlinfr\AppData\Local\Programs\Microsoft VS Code\" Code.exe