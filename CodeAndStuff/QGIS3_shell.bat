SET OSGEO4W_ROOT=C:\OSGeo4W64
call %OSGEO4W_ROOT%\bin\o4w_env.bat"
call qt5_env.bat
call py3_env.bat

path %OSGEO4W_ROOT%\apps\qgis\bin;%PATH%
set QGIS_PREFIX_PATH=%OSGEO4W_ROOT:\=/%/apps/qgis
set GDAL_FILENAME_IS_UTF8=YES
rem Set VSI cache to be used as buffer, see #6448
rem set VSI_CACHE=TRUE
rem set VSI_CACHE_SIZE=1000000
set QT_PLUGIN_PATH=%OSGEO4W_ROOT%\apps\qgis-dev\qtplugins;%OSGEO4W_ROOT%\apps\qt5\plugins
set PYTHONPATH=%OSGEO4W_ROOT%\apps\qgis\python;%PYTHONPATH%
set PYTHONHOME=%OSGEO4W_ROOT%\apps\Python37
rem "%PYTHONHOME%\python" %*

cdm.exe
@echo on
@if [%1]==[] (echo run o-help for a list of available commands & cmd.exe /k) else (cmd /c "%*")

