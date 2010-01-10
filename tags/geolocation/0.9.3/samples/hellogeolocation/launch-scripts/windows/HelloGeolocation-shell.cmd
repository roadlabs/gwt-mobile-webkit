@if "%GWT_HOME%"=="" goto needGWTHome
@java -Xmx128m -cp "%~dp0\..\..\src;%~dp0\..\..\bin;%GWT_HOME%\gwt-user.jar;%GWT_HOME%\gwt-dev-windows.jar;..\..\..\..\gwt-html5-geolocation.jar" com.google.gwt.dev.HostedMode -war "%~dp0\..\..\war" %* -startupUrl HelloGeolocation.html com.google.code.gwt.geolocation.sample.geolocation.HelloGeolocation
@exit /B %ERRORLEVEL%

:needGWTHome
@echo The environment variable GWT_HOME is not defined, it should point to a valid GWT installation.
@exit /B 1
