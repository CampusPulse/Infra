::@ECHO OFF
SET version=1.1.2
SET packagepath=%cd%

dotnet pack ..\..\Core\CampusPulse.Core.MessageBroker.Manager\CampusPulse.Core.MessageBroker.Manager.csproj -c Release -o %packagepath%\nupkgs -p:PackageVersion=%version%

IF %ERRORLEVEL% EQU 0 (
	dotnet nuget push %packagepath%\nupkgs\CampusPulse.Core.MessageBroker.Manager.%version%.nupkg 
)

dotnet pack ..\..\Core\CampusPulse.Core.Domain\CampusPulse.Core.Domain.csproj -c Release -o %packagepath%\nupkgs -p:PackageVersion=%version%

IF %ERRORLEVEL% EQU 0 (
	dotnet nuget push %packagepath%\nupkgs\CampusPulse.Core.Domain.%version%.nupkg 
)

dotnet pack ..\..\Core\CampusPulse.Core.Web.Service\CampusPulse.Core.Web.Service.csproj -c Release -o %packagepath%\nupkgs -p:PackageVersion=%version%

IF %ERRORLEVEL% EQU 0 (
	dotnet nuget push %packagepath%\nupkgs\CampusPulse.Core.Web.Service.%version%.nupkg 
)