# PyVerSwitch
Python version switch for windows  
Yes, it's just a bat.  
首先准备好安装的所有python版本的路径，如下：  
D:\Program Files\IT\Python2.7.6;  
D:\Python34;  
在系统环境增加变量 “PY_HOME”，值任选一个如上版本路径；系统变量Path后加 “;%PY_HOME%;%PY_HOME%\Scripts”，点击确认，运行bat即可。