#! /bin/sh

source $KSROOT/scripts/base.sh
mfun_pid=$(pidof mfun)
LOGTIME=$(TZ=UTC-8 date -R "+%Y-%m-%d %H:%M:%S")
if [ -n "${mfun_pid}" ];then
	http_response "【$LOGTIME】MFUN进程运行正常！（PID：${mfun_pid}）"
else
	http_response "【$LOGTIME】MFUN进程未运行！"
fi
