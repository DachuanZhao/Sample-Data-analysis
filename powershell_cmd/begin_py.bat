@echo off

::��ȡ��ǰ�ļ�·��
set batPath=%~dp0
echo ��ǰ·��Ϊ��%cd%
echo �ű�·��Ϊ��%batPath%
echo ������ǰ·��Ϊ�ű�·��
cd /d %batPath%
echo ��ǰ·��Ϊ��%cd%
pause

start python update_hs.py
exit  