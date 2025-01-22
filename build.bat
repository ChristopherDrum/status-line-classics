@echo off
mkdir build

del .\build\%1.z4
zilf .\%1\%1.zil .\build\%1.zap
zapf -ab .\build\%1.zap > .\build\%1_freq.xzap & del .\build\%1_freq.zap
zapf .\build\%1.zap
del .\build\*.zap .\build\*.xzap