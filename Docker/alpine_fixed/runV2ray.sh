#!/usr/bin/env bash

sed -i "s|\"access\": \"/var/log/v2ray/access.log\",||g" "/etc/v2ray/config.json"
sed -i "s|\"error\": \"/var/log/v2ray/error.log\",||g" "/etc/v2ray/config.json"

if [ ! -z "${api_port}" ]
    then
          sed -i "s|\"port\": 2333,|\"port\": ${api_port},|"  "/etc/v2ray/config.json"
fi
if [ ! -z "${sspanel_url}" ]
    then
         sed -i "s|\"https://google.com\"|\"${sspanel_url}\"|g" "/etc/v2ray/config.json"
fi
if [ ! -z "${key}" ]
    then
         sed -i "s/\"55fUxDGFzH3n\"/\"${key}\"/g" "/etc/v2ray/config.json"
fi

if [ ! -z "${node_id}" ]
    then
         sed -i "s/\"nodeid\": 123456/\"nodeid\": ${node_id}/g" "/etc/v2ray/config.json"
fi

if [ ! -z "${speedtest}" ]
    then
        sed -i "s/\"SpeedTestCheckRate\": 6/\"SpeedTestCheckRate\": ${speedtest}/g" "/etc/v2ray/config.json"
fi

if [ ! -z "${checkrate}" ]
    then
        sed -i "s/\"checkRate\": 60/\"checkRate\": ${checkrate}/g" "/etc/v2ray/config.json"
fi

if [ ! -z "${downWithPanel}" ]
    then
       sed -i "s/\"downWithPanel\": 1/\"downWithPanel\": ${downWithPanel}/g" "/etc/v2ray/config.json"
fi

if [ ! -z "${MYSQLHOST}" ]
    then
       sed -i "s|"https://bing.com"|"${MYSQLHOST}"|g" "/etc/v2ray/config.json"
fi

if [ ! -z "${MYSQLDBNAME}" ]
    then
       sed -i "s/"demo_dbname"/"${MYSQLDBNAME}"/g" "/etc/v2ray/config.json"
fi

if [ ! -z "${MYSQLUSR}" ]
    then
       sed -i "s|\"demo_user\"|\"${MYSQLUSR}\"|g" "/etc/v2ray/config.json"
fi
if [ ! -z "${MYSQLPASSWD}" ]
    then
      sed -i "s/"demo_dbpassword"/"${MYSQLPASSWD}"/g" "/etc/v2ray/config.json"
fi
if [ ! -z "${MYSQLPORT}" ]
    then
      sed -i "s/3306,/${MYSQLPORT},/g" "/etc/v2ray/config.json"
fi

if [ ! -z "${PANELTYPE}" ]
    then
      sed -i "s|\"paneltype\": 0|\"paneltype\": ${PANELTYPE}|g" "/etc/v2ray/config.json"
fi

if [ ! -z "${usemysql}" ]
    then
      sed -i "s|\"usemysql\": 0|\"usemysql\": ${usemysql}|g" "/etc/v2ray/config.json"
fi

if [ ! -z "${LDNS}" ]
    then
      sed -i "s|\"localhost\"|\"${LDNS}\"|g" "/etc/v2ray/config.json"
fi
if [ ! -z "${CF_Key}" ]
then
  sed -i "s|\"bbbbbbbbbbbbbbbbbb\"|\"${CF_Key}\"|g" "/etc/v2ray/config.json"
fi
if [ ! -z "${CF_Email}" ]
then
  sed -i "s|\"v2ray@v2ray.com\"|\"${CF_Email}\"|g" "/etc/v2ray/config.json"

fi

if [ ! -z "${ALi_Key}" ]
then
  sed -i "s|\"sdfsdfsdfljlbjkljlkjsdfoiwje\"|\"${ALi_Key}\"|g" "/etc/v2ray/config.json"
fi
if [ ! -z "${Ali_Secret}" ]
then
  sed -i "s|\"jlsdflanljkljlfdsaklkjflsa\"|\"${Ali_Secret}\"|g" "/etc/v2ray/config.json"

fi

if [ ! -z "${NodeUserLimited}" ]
    then
        sed -i "s/\"NodeUserLimited\": 4/\"NodeUserLimited\": ${NodeUserLimited}/g" "/etc/v2ray/config.json"
fi

if [ ! -z "${UseIP}" ]
then
  sed -i "s|\"UseIPv4\"|\"${UseIP}\"|g" "/etc/v2ray/config.json"

fi

if [ ! -z "${MUREGEX}" ]
then
  sed -i "s|\"%5m%id.%suffix\"|\"${MUREGEX}\"|g" "/etc/v2ray/config.json"

fi

if [ ! -z "${MUSUFFIX}" ]
then
  sed -i "s|\"microsoft.com\"|\"${MUSUFFIX}\"|g" "/etc/v2ray/config.json"

fi

if [ ! -z "${ProxyTCP}" ]
then
  sed -i "s|\"proxy_tcp\": 0|\"proxy_tcp\": ${ProxyTCP}|g" "/etc/v2ray/config.json"

fi


if [ ! -z "${CacheDurationSec}" ]
then
  sed -i "s|\"cache_duration_sec\": 120|\"cache_duration_sec\": ${CacheDurationSec}|g" "/etc/v2ray/config.json"

fi

if [ ! -z "${SendThrough}" ]
then
  sed -i "s|\"0.0.0.0\"|\"${SendThrough}\"|g" "/etc/v2ray/config.json"
fi


if [ ! -z "${DNS}}" ]
then
  sed -i "s|\"8.8.8.8\"|\"${DNS}\"|g" "/etc/v2ray/config.json"
fi
cat /etc/v2ray/config.json
v2ray -config=/etc/v2ray/config.json
