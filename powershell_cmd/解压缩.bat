::����ʾ���ֻ��ʾ���
@echo off 
if exist "C:\Program Files\WinRAR\WinRAR.exe" ( 
	set winrarPath="C:\Program Files\WinRAR"
	echo "C:\Program Files\WinRAR\WinRAR.exe is exit"
)else (::ע��ո�
	set /p winrarPath=������winrar��Ŀ¼:
)
::pause

echo �������winrar����������
echo winrar���ڵ�·��Ϊ��%winrarPath%
set path==%path%;%winrarPath%
::pause

::��ȡ��ǰ�ļ�·��
set batPath=%~dp0
echo ��ǰ·��Ϊ��%cd%
echo �ű�·��Ϊ��%batPath%
echo �����л�·��Ϊ�ű�·��
cd /d %batPath%
echo ������ǰ·��Ϊ�ű�·��
echo ��ǰ·��Ϊ��%cd%
pause

set /p myBegin=�����뿪ʼ���:
set /p myEnd=������������:
::����ֻ����һ����ĸ
for %%i in (*.rar) do (
	::��ѹ��
	rar x %%i
	copy "%batPath%\sql\*.sql" "C:\"
	for /f %%j in ('dir %batPath% /a:d/s/b') do (rd /q/s "%%j") 	
)

pause
