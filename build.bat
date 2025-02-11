@echo off

del .\build\*.xzap .\build\*.zap .\build\%1.z*
zilf -w .\%1\%1.zil .\build\%1.zap
zapf -ab .\build\%1.zap > .\build\%1_freq.xzap
del .\build\%1_freq.zap
zapf .\build\%1.zap