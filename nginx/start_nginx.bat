@echo off
REM Windows 下无效
REM set PHP_FCGI_CHILDREN=5

REM 每个进程处理的最大请求数，或设置为 Windows 环境变量
set PHP_FCGI_MAX_REQUESTS=1000
 
echo Starting PHP FastCGI...
RunHiddenConsole C:/wnmp/php/php-cgi.exe -b 127.0.0.1:9000 -c C:/wnmp/php/php.ini
 
echo Starting nginx...
RunHiddenConsole C:/wnmp/nginx/nginx.exe -p C:/wnmp/nginx
