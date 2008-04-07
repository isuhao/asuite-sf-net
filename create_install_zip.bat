@SET BDS=C:\Programmi\CodeGear\RAD Studio\5.0
@SET BDSCOMMONDIR=C:\Documents and Settings\All Users\Documenti\RAD Studio\5.0
@SET FrameworkDir=C:\WINDOWS\Microsoft.NET\Framework\
@SET FrameworkVersion=v2.0.50727
@SET FrameworkSDKDir=

@ECHO Setting environment for using CodeGear RAD Studio tools

@SET PATH=%FrameworkDir%%FrameworkVersion%;%FrameworkSDKDir%;%PATH%

msbuild.exe ASuite.dproj /t:build /p:configuration=release

mkdir Release\

cd Release\

mkdir Icons\
mkdir Lang\
mkdir Docs\
mkdir MenuThemes\
mkdir MenuThemes\Default\
mkdir MenuThemes\Default\IconTheme\
mkdir MenuThemes\Default\Theme\
mkdir MenuThemes\Blacksuite\
mkdir MenuThemes\Blacksuite\IconTheme\
mkdir MenuThemes\Blacksuite\Theme\

copy ..\bin\asuite.exe ..\bin\asuite.exe.old
D:\desktop\Matteo\Programmi\UPX\upx.exe --best ..\bin\asuite.exe

copy ..\bin\asuite.exe

copy ..\bin\Icons\asuite.cur Icons\
copy ..\bin\Icons\asuite.ico Icons\
copy ..\bin\Icons\1.ico Icons\
copy ..\bin\Icons\10.ico Icons\
copy ..\bin\Icons\11.ico Icons\
copy ..\bin\Icons\12.ico Icons\
copy ..\bin\Icons\13.ico Icons\
copy ..\bin\Icons\14.ico Icons\
copy ..\bin\Icons\2.ico Icons\
copy ..\bin\Icons\3.ico Icons\
copy ..\bin\Icons\4.ico Icons\
copy ..\bin\Icons\5.ico Icons\
copy ..\bin\Icons\6.ico Icons\
copy ..\bin\Icons\7.ico Icons\
copy ..\bin\Icons\8.ico Icons\
copy ..\bin\Icons\9.ico Icons\

copy ..\bin\Lang\english.xml Lang\
copy ..\bin\Lang\french.xml Lang\
copy ..\bin\Lang\italiano.xml Lang\
copy ..\bin\Lang\magyar.xml  Lang\
copy ..\bin\Lang\nederlands.xml Lang
copy ..\bin\Lang\polish.xml Lang
copy ..\bin\Lang\spanish.xml Lang
copy ..\bin\Lang\portuguese.xml Lang
copy ..\bin\Lang\turkce.xml Lang
copy ..\bin\Lang\german.xml Lang
copy ..\bin\Lang\czech.xml Lang
copy ..\bin\Lang\danish.xml Lang
copy ..\bin\Lang\korean.xml Lang
copy ..\bin\Lang\romana.xml Lang
copy ..\bin\Lang\slovak.xml Lang
copy ..\bin\Lang\norwegian.xml Lang
copy ..\bin\Lang\japanese.xml Lang

copy ..\bin\Docs\leggimi.rtf Docs
copy ..\bin\Docs\license.txt Docs
copy ..\bin\Docs\licensz.txt Docs
copy ..\bin\Docs\licenza.txt Docs
copy ..\bin\Docs\readme.rtf Docs
copy ..\bin\Docs\liesmich.rtf Docs
copy "..\bin\Docs\Lisez moi.rtf" Docs
copy ..\bin\Docs\olvassel.rtf Docs
copy "..\bin\Docs\SalvadorSoftware Site.url" Docs
copy "..\bin\Docs\Project ASuite.url" Docs

copy ..\bin\MenuThemes\Default\PersonalPicture.jpg MenuThemes\Default
copy ..\bin\MenuThemes\Default\PersonalPicture-Female.jpg MenuThemes\Default
copy ..\bin\MenuThemes\Default\readme.txt MenuThemes\Default

copy ..\bin\MenuThemes\Default\IconTheme\asuite.ico MenuThemes\Default\IconTheme
copy ..\bin\MenuThemes\Default\IconTheme\documents.ico MenuThemes\Default\IconTheme
copy ..\bin\MenuThemes\Default\IconTheme\explore.ico MenuThemes\Default\IconTheme
copy ..\bin\MenuThemes\Default\IconTheme\help.ico MenuThemes\Default\IconTheme
copy ..\bin\MenuThemes\Default\IconTheme\music.ico MenuThemes\Default\IconTheme
copy ..\bin\MenuThemes\Default\IconTheme\options.ico MenuThemes\Default\IconTheme
copy ..\bin\MenuThemes\Default\IconTheme\pictures.ico MenuThemes\Default\IconTheme
copy ..\bin\MenuThemes\Default\IconTheme\search.ico MenuThemes\Default\IconTheme
copy ..\bin\MenuThemes\Default\IconTheme\videos.ico MenuThemes\Default\IconTheme

copy ..\bin\MenuThemes\Default\Theme\background.png MenuThemes\Default\Theme
copy ..\bin\MenuThemes\Default\Theme\divider.jpg MenuThemes\Default\Theme
copy ..\bin\MenuThemes\Default\Theme\drive_space_slider.bmp MenuThemes\Default\Theme

copy ..\bin\MenuThemes\Blacksuite\PersonalPicture.jpg MenuThemes\Blacksuite
copy ..\bin\MenuThemes\Blacksuite\preview.jpg MenuThemes\Blacksuite
copy ..\bin\MenuThemes\Blacksuite\readme.txt MenuThemes\Blacksuite

copy ..\bin\MenuThemes\Blacksuite\IconTheme\asuite.ico MenuThemes\Blacksuite\IconTheme
copy ..\bin\MenuThemes\Blacksuite\IconTheme\documents.ico MenuThemes\Blacksuite\IconTheme
copy ..\bin\MenuThemes\Blacksuite\IconTheme\explore.ico MenuThemes\Blacksuite\IconTheme
copy ..\bin\MenuThemes\Blacksuite\IconTheme\help.ico MenuThemes\Blacksuite\IconTheme
copy ..\bin\MenuThemes\Blacksuite\IconTheme\music.ico MenuThemes\Blacksuite\IconTheme
copy ..\bin\MenuThemes\Blacksuite\IconTheme\options.ico MenuThemes\Blacksuite\IconTheme
copy ..\bin\MenuThemes\Blacksuite\IconTheme\pictures.ico MenuThemes\Blacksuite\IconTheme
copy ..\bin\MenuThemes\Blacksuite\IconTheme\search.ico MenuThemes\Blacksuite\IconTheme
copy ..\bin\MenuThemes\Blacksuite\IconTheme\videos.ico MenuThemes\Blacksuite\IconTheme

copy ..\bin\MenuThemes\Blacksuite\Theme\background.jpg MenuThemes\Blacksuite\Theme
copy ..\bin\MenuThemes\Blacksuite\Theme\divider.jpg MenuThemes\Blacksuite\Theme
copy ..\bin\MenuThemes\Blacksuite\Theme\drive_space_slider.bmp MenuThemes\Blacksuite\Theme

c:\programmi\7-zip\7z.exe a -tzip ..\asuite151.zip

cd ..

C:\Programmi\nsis\makensis.exe /V2 /X"SetCompressor /FINAL /SOLID lzma" "ASuite - Install script.nsi"

rd /s /q release\

pause