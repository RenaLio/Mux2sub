#!MANAGED-CONFIG https://lting.cyou/link/j9B7GlI7g75EASYj?clash=1

#---------------------------------------------------#
## 上次更新于：2022-12-13 04:28:54
#---------------------------------------------------#

port: 7890
socks-port: 7891
redir-port: 7892
allow-lan: false
mode: rule
log-level: silent
external-controller: '0.0.0.0:9090'
secret: ''
dns:
  enable: true
  ipv6: false
  listen: '0.0.0.0:53'
  enhanced-mode: fake-ip
  fake-ip-range: 198.18.0.1/16
  nameserver:
    - 114.114.114.114
    - 'tcp://223.5.5.5'
  fallback:
    - 'tls://223.5.5.5:853'
    - 'https://223.5.5.5/dns-query'
  fallback-filter:
    geoip: true
    ipcidr:
      - 240.0.0.0/4
proxies:
  -
    name: v2ray-1az-az02(香港)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10010
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: az01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: az01.ssru4.fun
    tls: true
  -
    name: v2ray-1az-fr01(法国)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10022
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: fr01.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: fr01.2yun.win
    tls: true
  -
    name: v2ray-1az-hk01(hgc香港Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10032
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk01.ssru4.fun
    tls: true
  -
    name: v2ray-1az-hk02(香港)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10020
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk02.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk02.ssru4.fun
    tls: true
  -
    name: v2ray-1az-hk03(香港Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10001
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk03.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: hk03.ssru3.casa
    tls: true
  -
    name: v2ray-1az-hk04(香港Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10002
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /
      headers: { Host: hk04.ssru3.casa }
    ws-path: /
    ws-headers:
      Host: hk04.ssru3.casa
    tls: true
  -
    name: v2ray-1az-hk05(hkbn香港Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10003
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /
      headers: { Host: hk05.ssru4.fun }
    ws-path: /
    ws-headers:
      Host: hk05.ssru4.fun
    tls: true
  -
    name: v2ray-1az-hk07(hgc香港Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10011
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk07.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk07.ssru4.fun
    tls: true
  -
    name: v2ray-1az-hk08(hgc香港Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10037
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk08.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk08.ssru4.fun
    tls: true
  -
    name: v2ray-1az-hl01(荷兰)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10012
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hl01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: hl01.ssru3.casa
    tls: true
  -
    name: v2ray-1az-jp01(日本Netflix|Abema|...)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10007
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.jp01.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.jp01.2yun.win
    tls: true
  -
    name: v2ray-1az-jp02(日本Netflix|Abema|...)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10015
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: jp02.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: jp02.ssru4.fun
    tls: true
  -
    name: v2ray-1az-jp03(日本|新加坡Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10033
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.jp03.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.jp03.2yun.win
    tls: true
  -
    name: v2ray-1az-jp05(日本Netflix|Abema|...)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10004
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: jp05.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: jp05.ssru4.fun
    tls: true
  -
    name: v2ray-1az-kr01(韩国)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10016
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: kr01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: kr01.ssru3.casa
    tls: true
  -
    name: v2ray-1az-kr02(韩国)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10038
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: kr02.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: kr02.ssru3.casa
    tls: true
  -
    name: v2ray-1az-lu01(卢森堡)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10005
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: lu01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: lu01.ssru3.casa
    tls: true
  -
    name: v2ray-1az-mol01(摩尔多卡)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10036
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: mol01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: mol01.ssru3.casa
    tls: true
  -
    name: v2ray-1az-my01(马来西亚)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10043
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: my01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: my01.ssru3.casa
    tls: true
  -
    name: v2ray-1az-ru01(俄罗斯netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10023
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.ru01.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.ru01.2yun.win
    tls: true
  -
    name: v2ray-1az-ru02(俄罗斯netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10031
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.ru02.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.ru02.2yun.win
    tls: true
  -
    name: v2ray-1az-sgp01(新加坡Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10014
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: sgp01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: sgp01.ssru3.casa
    tls: true
  -
    name: v2ray-1az-sgp02
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10021
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: sgp02.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: sgp02.ssru3.casa
    tls: true
  -
    name: v2ray-1az-tw01(台湾Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10006
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw01.ssru3.casa
    tls: true
  -
    name: v2ray-1az-tw02(台湾Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10008
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw02.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw02.ssru3.casa
    tls: true
  -
    name: v2ray-1az-tw03(台湾Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10034
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw03.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw03.ssru3.casa
    tls: true
  -
    name: v2ray-1az-tw04(台湾Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10035
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw04.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw04.ssru3.casa
    tls: true
  -
    name: v2ray-1az-us02(美国)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10017
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: us02.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: us02.ssru4.fun
    tls: true
  -
    name: v2ray-1az-us03(美国Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10018
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.us03.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.us03.2yun.win
    tls: true
  -
    name: v2ray-1az-us05(美国Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10025
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: us05.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: us05.ssru4.fun
    tls: true
  -
    name: v2ray-1az-us06(美国)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10026
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: us06.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: us06.ssru4.fun
    tls: true
  -
    name: v2ray-1az-vn01(越南Netflix)
    type: vmess
    server: az.hk01.ssru7.casa
    port: 10019
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /vn01
      headers: { Host: vn01.ssru4.fun }
    ws-path: /vn01
    ws-headers:
      Host: vn01.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-az02(香港)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10010
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: az01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: az01.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-br01(巴西)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10040
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: br01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: br01.paopaocloud.cyou
    tls: true
  -
    name: v2ray-2ah-can01(加拿大)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10041
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: can01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: can01.paopaocloud.cyou
    tls: true
  -
    name: v2ray-2ah-db01(迪拜)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10039
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: db01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: db01.paopaocloud.cyou
    tls: true
  -
    name: v2ray-2ah-hk02(香港)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10020
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk02.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk02.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-hk03(香港Netflix)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10001
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk03.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: hk03.ssru3.casa
    tls: true
  -
    name: v2ray-2ah-hk04(香港Netflix)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10002
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /
      headers: { Host: hk04.ssru3.casa }
    ws-path: /
    ws-headers:
      Host: hk04.ssru3.casa
    tls: true
  -
    name: v2ray-2ah-hk05(香港)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10003
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /
      headers: { Host: hk05.ssru4.fun }
    ws-path: /
    ws-headers:
      Host: hk05.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-hk06(hkt香港Netflix)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10009
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk06.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk06.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-hk07(hgc香港Netflix)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10011
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk07.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk07.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-hk08(hgc香港Netflix)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10037
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk08.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk08.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-jp01(日本)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10007
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.jp01.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.jp01.2yun.win
    tls: true
  -
    name: v2ray-2ah-jp02(日本Netflix|Abema|...)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10015
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: jp02.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: jp02.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-jp03(日本)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10033
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.jp03.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.jp03.2yun.win
    tls: true
  -
    name: v2ray-2ah-jp05(日本Netflix|Abema|...)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10004
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: jp05.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: jp05.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-kr01(韩国)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10016
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: kr01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: kr01.ssru3.casa
    tls: true
  -
    name: v2ray-2ah-kr02(韩国)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10038
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: kr02.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: kr02.ssru3.casa
    tls: true
  -
    name: v2ray-2ah-ph01(菲律宾)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10042
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ph01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: ph01.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-ru01(俄罗斯)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10023
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.ru01.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.ru01.2yun.win
    tls: true
  -
    name: v2ray-2ah-sgp01(新加坡)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10014
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: sgp01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: sgp01.ssru3.casa
    tls: true
  -
    name: v2ray-2ah-tw01(台湾Netflix)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10006
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw01.ssru3.casa
    tls: true
  -
    name: v2ray-2ah-tw03(台湾Netflix)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10034
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw03.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw03.ssru3.casa
    tls: true
  -
    name: v2ray-2ah-tw04(台湾Netflix)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10035
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw04.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw04.ssru3.casa
    tls: true
  -
    name: v2ray-2ah-us05(美国)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10025
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: us05.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: us05.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-us06(美国)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10026
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: us06.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: us06.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-us07(美国流媒体解锁)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10027
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: us07.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: us07.ssru4.fun
    tls: true
  -
    name: v2ray-2ah-vn01(越南Netflix)
    type: vmess
    server: ah.yd01.ssru7.casa
    port: 10019
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /vn01
      headers: { Host: vn01.ssru4.fun }
    ws-path: /vn01
    ws-headers:
      Host: vn01.ssru4.fun
    tls: true
  -
    name: v2ray-3cf-aus01(澳大利亚)
    type: vmess
    server: aus01.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: aus01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: aus01.paopaocloud.cyou
    tls: true
  -
    name: v2ray-3cf-br01(巴西)
    type: vmess
    server: br01.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: br01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: br01.paopaocloud.cyou
    tls: true
  -
    name: v2ray-3cf-can01(加拿大)
    type: vmess
    server: can01.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: can01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: can01.paopaocloud.cyou
    tls: true
  -
    name: v2ray-3cf-cl01(智利)
    type: vmess
    server: cl01.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: cl01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: cl01.paopaocloud.cyou
    tls: true
  -
    name: v2ray-3cf-db01(迪拜)
    type: vmess
    server: db01.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: db01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: db01.paopaocloud.cyou
    tls: true
  -
    name: v2ray-3cf-ger01(德国)
    type: vmess
    server: ger01.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ger01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: ger01.ssru4.fun
    tls: true
  -
    name: v2ray-3cf-kr02(韩国)
    type: vmess
    server: kr02.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: kr02.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: kr02.ssru3.casa
    tls: true
  -
    name: v2ray-3cf-lu01(卢森堡)
    type: vmess
    server: lu01.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: lu01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: lu01.ssru3.casa
    tls: true
  -
    name: v2ray-3cf-my01(马来西亚)
    type: vmess
    server: my01.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: my01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: my01.ssru3.casa
    tls: true
  -
    name: v2ray-3cf-ph01(菲律宾)
    type: vmess
    server: ph01.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ph01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: ph01.ssru4.fun
    tls: true
  -
    name: v2ray-3cf-tr01(土耳其)
    type: vmess
    server: tr01.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tr01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: tr01.ssru4.fun
    tls: true
  -
    name: v2ray-3cf-uk01(英国BBC)
    type: vmess
    server: uk01.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: uk01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: uk01.ssru4.fun
    tls: true
  -
    name: v2ray-3cf-us02(美国)
    type: vmess
    server: us02.cf.ssru7.casa
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: us02.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: us02.ssru4.fun
    tls: true
  -
    name: v2ray-jm-jp03(日本)
    type: vmess
    server: jm.yd02.paopaocloud.cyou
    port: 15623
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.jp03.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.jp03.2yun.win
    tls: true
  -
    name: v2ray-jm-tw01(台湾Netflix)
    type: vmess
    server: jm.yd02.paopaocloud.cyou
    port: 15621
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw01.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-加拿大01
    type: vmess
    server: can01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: can01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: can01.paopaocloud.cyou
    tls: true
  -
    name: _v2ray-4zl-卢森堡01
    type: vmess
    server: lu01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: lu01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: lu01.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-印度01
    type: vmess
    server: in01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: in01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: in01.paopaocloud.cyou
    tls: true
  -
    name: _v2ray-4zl-台湾01(Netflix)
    type: vmess
    server: paopao.v2.tw01.paopaocloud.cyou
    port: 13306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw01.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-台湾02(Netflix)
    type: vmess
    server: paopao.v2.tw02.paopaocloud.cyou
    port: 3306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw02.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw02.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-台湾03(Netflix)
    type: vmess
    server: paopao.v2.tw03.paopaocloud.cyou
    port: 3306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw03.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw03.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-台湾04(Netflix)
    type: vmess
    server: paopao.v2.tw04.paopaocloud.cyou
    port: 3306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw04.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw04.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-土耳其01
    type: vmess
    server: tr01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tr01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: tr01.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-巴西01
    type: vmess
    server: br01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: br01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: br01.paopaocloud.cyou
    tls: true
  -
    name: _v2ray-4zl-德国01
    type: vmess
    server: ger01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ger01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: ger01.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-摩尔多卡01
    type: vmess
    server: paopao.v2.mol01.paopaocloud.cyou
    port: 3306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: mol01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: mol01.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-新加坡01(Netflix)
    type: vmess
    server: paopao.v2.sgp01.paopaocloud.cyou
    port: 10551
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: sgp01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: sgp01.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-新加坡02
    type: vmess
    server: paopao.v2.sgp02.paopaocloud.cyou
    port: 10551
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: sgp02.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: sgp02.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-新加坡03
    type: vmess
    server: paopao.v2.sgp03.paopaocloud.cyou
    port: 3306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: paopao.v2.sgp03.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: paopao.v2.sgp03.paopaocloud.cyou
    tls: true
  -
    name: _v2ray-4zl-新西伯利亚01(俄罗斯Netflix)
    type: vmess
    server: ssru.v2.ru01.2yun.win
    port: 3306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.ru01.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.ru01.2yun.win
    tls: true
  -
    name: _v2ray-4zl-新西伯利亚02(俄罗斯Netflix)
    type: vmess
    server: ssru.v2.ru02.2yun.win
    port: 3307
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.ru02.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.ru02.2yun.win
    tls: true
  -
    name: _v2ray-4zl-日本01(Netflix|Abema|...)
    type: vmess
    server: ssru.v2.jp01.2yun.win
    port: 3306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.jp01.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.jp01.2yun.win
    tls: true
  -
    name: _v2ray-4zl-日本03
    type: vmess
    server: ssru.v2.jp03.2yun.win
    port: 13306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.jp03.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.jp03.2yun.win
    tls: true
  -
    name: _v2ray-4zl-日本05(Netflix|Abema|...)
    type: vmess
    server: paopao.v2.jp05.paopaocloud.cyou
    port: 3307
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: jp05.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: jp05.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-智利01
    type: vmess
    server: cl01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: cl01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: cl01.paopaocloud.cyou
    tls: true
  -
    name: _v2ray-4zl-法国01
    type: vmess
    server: fr01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: fr01.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: fr01.2yun.win
    tls: true
  -
    name: _v2ray-4zl-澳大利亚01
    type: vmess
    server: aus01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: aus01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: aus01.paopaocloud.cyou
    tls: true
  -
    name: _v2ray-4zl-美国01
    type: vmess
    server: paopao.v2.us01.paopaocloud.cyou
    port: 3307
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: paopao.v2.us01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: paopao.v2.us01.paopaocloud.cyou
    tls: true
  -
    name: _v2ray-4zl-美国02
    type: vmess
    server: us02.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: us02.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: us02.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-美国03(Netflix)
    type: vmess
    server: ssru.v2.us03.2yun.win
    port: 13306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ssru.v2.us03.2yun.win }
    ws-path: /v2ray
    ws-headers:
      Host: ssru.v2.us03.2yun.win
    tls: true
  -
    name: _v2ray-4zl-美国05
    type: vmess
    server: paopao.v2.us05.paopaocloud.cyou
    port: 3306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: us05.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: us05.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-美国06
    type: vmess
    server: paopao.v2.us06.paopaocloud.cyou
    port: 3306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: us06.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: us06.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-美国07
    type: vmess
    server: paopao.v2.us07.paopaocloud.cyou
    port: 3307
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: us07.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: us07.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-英国01【BBC】
    type: vmess
    server: uk01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: uk01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: uk01.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-荷兰01
    type: vmess
    server: paopao.v2.hl01.paopaocloud.cyou
    port: 3306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hl01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: hl01.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-菲律宾01
    type: vmess
    server: ph01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: ph01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: ph01.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-越南01(Netflix)
    type: vmess
    server: paopao.v2.vn01.paopaocloud.cyou
    port: 3306
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /vn01
      headers: { Host: vn01.ssru4.fun }
    ws-path: /vn01
    ws-headers:
      Host: vn01.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-迪拜01
    type: vmess
    server: db01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: db01.paopaocloud.cyou }
    ws-path: /v2ray
    ws-headers:
      Host: db01.paopaocloud.cyou
    tls: true
  -
    name: _v2ray-4zl-韩国01
    type: vmess
    server: paopao.v2.kr01.paopaocloud.cyou
    port: 10552
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: kr01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: kr01.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-韩国02
    type: vmess
    server: kr02.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: kr02.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: kr02.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-香港01
    type: vmess
    server: paopao.v2.hk01.paopaocloud.cyou
    port: 11050
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk01.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-香港02
    type: vmess
    server: paopao.v2.hk02.paopaocloud.cyou
    port: 13312
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk02.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk02.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-香港03-hkt(Netflix)
    type: vmess
    server: paopao.v2.hk03.paopaocloud.cyou
    port: 8901
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk03.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: hk03.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-香港04
    type: vmess
    server: paopao.v2.hk04.paopaocloud.cyou
    port: 20801
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /
      headers: { Host: hk04.ssru3.casa }
    ws-path: /
    ws-headers:
      Host: hk04.ssru3.casa
    tls: true
  -
    name: _v2ray-4zl-香港05(Netflix)
    type: vmess
    server: paopao.v2.hk05.paopaocloud.cyou
    port: 21050
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /
      headers: { Host: hk05.ssru4.fun }
    ws-path: /
    ws-headers:
      Host: hk05.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-香港06-hkt(Netflix)
    type: vmess
    server: paopao.v2.hk06.paopaocloud.cyou
    port: 10390
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk06.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk06.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-香港07-hgc
    type: vmess
    server: paopao.v2.hk07.paopaocloud.cyou
    port: 10432
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk07.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk07.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-香港08
    type: vmess
    server: paopao.v2.hk08.paopaocloud.cyou
    port: 3309
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: hk08.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: hk08.ssru4.fun
    tls: true
  -
    name: _v2ray-4zl-马来西亚01
    type: vmess
    server: my01.paopaocloud.cyou
    port: 443
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: my01.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: my01.ssru3.casa
    tls: true
  -
    name: _v2ray-ld-azhk02
    type: vmess
    server: paopao.v2.az01.paopaocloud.cyou
    port: 13312
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: az01.ssru4.fun }
    ws-path: /v2ray
    ws-headers:
      Host: az01.ssru4.fun
    tls: true
  -
    name: _v2ray台湾04<<<江门移动
    type: vmess
    server: jm.yd01.paopaocloud.cyou
    port: 20141
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
    network: ws
    ws-opts:
      path: /v2ray
      headers: { Host: tw04.ssru3.casa }
    ws-path: /v2ray
    ws-headers:
      Host: tw04.ssru3.casa
    tls: true
  -
    name: "_v2ray香港03-hkt<<<江门移动\t"
    type: vmess
    server: jm.yd01.paopaocloud.cyou
    port: 20137
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
  -
    name: _v2ray香港06<<<江门移动
    type: vmess
    server: jm.yd01.paopaocloud.cyou
    port: 20119
    uuid: 05ceceac-650c-36eb-9c2b-876f1440ae82
    alterId: 0
    cipher: auto
    udp: true
proxy-groups:
  -
    name: 🔰国外流量
    type: select
    proxies:
      - v2ray-1az-az02(香港)
      - v2ray-1az-fr01(法国)
      - v2ray-1az-hk01(hgc香港Netflix)
      - v2ray-1az-hk02(香港)
      - v2ray-1az-hk03(香港Netflix)
      - v2ray-1az-hk04(香港Netflix)
      - v2ray-1az-hk05(hkbn香港Netflix)
      - v2ray-1az-hk07(hgc香港Netflix)
      - v2ray-1az-hk08(hgc香港Netflix)
      - v2ray-1az-hl01(荷兰)
      - v2ray-1az-jp01(日本Netflix|Abema|...)
      - v2ray-1az-jp02(日本Netflix|Abema|...)
      - v2ray-1az-jp03(日本|新加坡Netflix)
      - v2ray-1az-jp05(日本Netflix|Abema|...)
      - v2ray-1az-kr01(韩国)
      - v2ray-1az-kr02(韩国)
      - v2ray-1az-lu01(卢森堡)
      - v2ray-1az-mol01(摩尔多卡)
      - v2ray-1az-my01(马来西亚)
      - v2ray-1az-ru01(俄罗斯netflix)
      - v2ray-1az-ru02(俄罗斯netflix)
      - v2ray-1az-sgp01(新加坡Netflix)
      - v2ray-1az-sgp02
      - v2ray-1az-tw01(台湾Netflix)
      - v2ray-1az-tw02(台湾Netflix)
      - v2ray-1az-tw03(台湾Netflix)
      - v2ray-1az-tw04(台湾Netflix)
      - v2ray-1az-us02(美国)
      - v2ray-1az-us03(美国Netflix)
      - v2ray-1az-us05(美国Netflix)
      - v2ray-1az-us06(美国)
      - v2ray-1az-vn01(越南Netflix)
      - v2ray-2ah-az02(香港)
      - v2ray-2ah-br01(巴西)
      - v2ray-2ah-can01(加拿大)
      - v2ray-2ah-db01(迪拜)
      - v2ray-2ah-hk02(香港)
      - v2ray-2ah-hk03(香港Netflix)
      - v2ray-2ah-hk04(香港Netflix)
      - v2ray-2ah-hk05(香港)
      - v2ray-2ah-hk06(hkt香港Netflix)
      - v2ray-2ah-hk07(hgc香港Netflix)
      - v2ray-2ah-hk08(hgc香港Netflix)
      - v2ray-2ah-jp01(日本)
      - v2ray-2ah-jp02(日本Netflix|Abema|...)
      - v2ray-2ah-jp03(日本)
      - v2ray-2ah-jp05(日本Netflix|Abema|...)
      - v2ray-2ah-kr01(韩国)
      - v2ray-2ah-kr02(韩国)
      - v2ray-2ah-ph01(菲律宾)
      - v2ray-2ah-ru01(俄罗斯)
      - v2ray-2ah-sgp01(新加坡)
      - v2ray-2ah-tw01(台湾Netflix)
      - v2ray-2ah-tw03(台湾Netflix)
      - v2ray-2ah-tw04(台湾Netflix)
      - v2ray-2ah-us05(美国)
      - v2ray-2ah-us06(美国)
      - v2ray-2ah-us07(美国流媒体解锁)
      - v2ray-2ah-vn01(越南Netflix)
      - v2ray-3cf-aus01(澳大利亚)
      - v2ray-3cf-br01(巴西)
      - v2ray-3cf-can01(加拿大)
      - v2ray-3cf-cl01(智利)
      - v2ray-3cf-db01(迪拜)
      - v2ray-3cf-ger01(德国)
      - v2ray-3cf-kr02(韩国)
      - v2ray-3cf-lu01(卢森堡)
      - v2ray-3cf-my01(马来西亚)
      - v2ray-3cf-ph01(菲律宾)
      - v2ray-3cf-tr01(土耳其)
      - v2ray-3cf-uk01(英国BBC)
      - v2ray-3cf-us02(美国)
      - v2ray-jm-jp03(日本)
      - v2ray-jm-tw01(台湾Netflix)
      - _v2ray-4zl-加拿大01
      - _v2ray-4zl-卢森堡01
      - _v2ray-4zl-印度01
      - _v2ray-4zl-台湾01(Netflix)
      - _v2ray-4zl-台湾02(Netflix)
      - _v2ray-4zl-台湾03(Netflix)
      - _v2ray-4zl-台湾04(Netflix)
      - _v2ray-4zl-土耳其01
      - _v2ray-4zl-巴西01
      - _v2ray-4zl-德国01
      - _v2ray-4zl-摩尔多卡01
      - _v2ray-4zl-新加坡01(Netflix)
      - _v2ray-4zl-新加坡02
      - _v2ray-4zl-新加坡03
      - _v2ray-4zl-新西伯利亚01(俄罗斯Netflix)
      - _v2ray-4zl-新西伯利亚02(俄罗斯Netflix)
      - _v2ray-4zl-日本01(Netflix|Abema|...)
      - _v2ray-4zl-日本03
      - _v2ray-4zl-日本05(Netflix|Abema|...)
      - _v2ray-4zl-智利01
      - _v2ray-4zl-法国01
      - _v2ray-4zl-澳大利亚01
      - _v2ray-4zl-美国01
      - _v2ray-4zl-美国02
      - _v2ray-4zl-美国03(Netflix)
      - _v2ray-4zl-美国05
      - _v2ray-4zl-美国06
      - _v2ray-4zl-美国07
      - _v2ray-4zl-英国01【BBC】
      - _v2ray-4zl-荷兰01
      - _v2ray-4zl-菲律宾01
      - _v2ray-4zl-越南01(Netflix)
      - _v2ray-4zl-迪拜01
      - _v2ray-4zl-韩国01
      - _v2ray-4zl-韩国02
      - _v2ray-4zl-香港01
      - _v2ray-4zl-香港02
      - _v2ray-4zl-香港03-hkt(Netflix)
      - _v2ray-4zl-香港04
      - _v2ray-4zl-香港05(Netflix)
      - _v2ray-4zl-香港06-hkt(Netflix)
      - _v2ray-4zl-香港07-hgc
      - _v2ray-4zl-香港08
      - _v2ray-4zl-马来西亚01
      - _v2ray-ld-azhk02
      - _v2ray台湾04<<<江门移动
      - "_v2ray香港03-hkt<<<江门移动\t"
      - _v2ray香港06<<<江门移动
      - 🚀直接连接
  -
    name: ⚓️其他流量
    type: select
    proxies:
      - 🔰国外流量
      - 🚀直接连接
  -
    name: ✈️Telegram
    type: select
    proxies:
      - 🔰国外流量
      - v2ray-1az-az02(香港)
      - v2ray-1az-fr01(法国)
      - v2ray-1az-hk01(hgc香港Netflix)
      - v2ray-1az-hk02(香港)
      - v2ray-1az-hk03(香港Netflix)
      - v2ray-1az-hk04(香港Netflix)
      - v2ray-1az-hk05(hkbn香港Netflix)
      - v2ray-1az-hk07(hgc香港Netflix)
      - v2ray-1az-hk08(hgc香港Netflix)
      - v2ray-1az-hl01(荷兰)
      - v2ray-1az-jp01(日本Netflix|Abema|...)
      - v2ray-1az-jp02(日本Netflix|Abema|...)
      - v2ray-1az-jp03(日本|新加坡Netflix)
      - v2ray-1az-jp05(日本Netflix|Abema|...)
      - v2ray-1az-kr01(韩国)
      - v2ray-1az-kr02(韩国)
      - v2ray-1az-lu01(卢森堡)
      - v2ray-1az-mol01(摩尔多卡)
      - v2ray-1az-my01(马来西亚)
      - v2ray-1az-ru01(俄罗斯netflix)
      - v2ray-1az-ru02(俄罗斯netflix)
      - v2ray-1az-sgp01(新加坡Netflix)
      - v2ray-1az-sgp02
      - v2ray-1az-tw01(台湾Netflix)
      - v2ray-1az-tw02(台湾Netflix)
      - v2ray-1az-tw03(台湾Netflix)
      - v2ray-1az-tw04(台湾Netflix)
      - v2ray-1az-us02(美国)
      - v2ray-1az-us03(美国Netflix)
      - v2ray-1az-us05(美国Netflix)
      - v2ray-1az-us06(美国)
      - v2ray-1az-vn01(越南Netflix)
      - v2ray-2ah-az02(香港)
      - v2ray-2ah-br01(巴西)
      - v2ray-2ah-can01(加拿大)
      - v2ray-2ah-db01(迪拜)
      - v2ray-2ah-hk02(香港)
      - v2ray-2ah-hk03(香港Netflix)
      - v2ray-2ah-hk04(香港Netflix)
      - v2ray-2ah-hk05(香港)
      - v2ray-2ah-hk06(hkt香港Netflix)
      - v2ray-2ah-hk07(hgc香港Netflix)
      - v2ray-2ah-hk08(hgc香港Netflix)
      - v2ray-2ah-jp01(日本)
      - v2ray-2ah-jp02(日本Netflix|Abema|...)
      - v2ray-2ah-jp03(日本)
      - v2ray-2ah-jp05(日本Netflix|Abema|...)
      - v2ray-2ah-kr01(韩国)
      - v2ray-2ah-kr02(韩国)
      - v2ray-2ah-ph01(菲律宾)
      - v2ray-2ah-ru01(俄罗斯)
      - v2ray-2ah-sgp01(新加坡)
      - v2ray-2ah-tw01(台湾Netflix)
      - v2ray-2ah-tw03(台湾Netflix)
      - v2ray-2ah-tw04(台湾Netflix)
      - v2ray-2ah-us05(美国)
      - v2ray-2ah-us06(美国)
      - v2ray-2ah-us07(美国流媒体解锁)
      - v2ray-2ah-vn01(越南Netflix)
      - v2ray-3cf-aus01(澳大利亚)
      - v2ray-3cf-br01(巴西)
      - v2ray-3cf-can01(加拿大)
      - v2ray-3cf-cl01(智利)
      - v2ray-3cf-db01(迪拜)
      - v2ray-3cf-ger01(德国)
      - v2ray-3cf-kr02(韩国)
      - v2ray-3cf-lu01(卢森堡)
      - v2ray-3cf-my01(马来西亚)
      - v2ray-3cf-ph01(菲律宾)
      - v2ray-3cf-tr01(土耳其)
      - v2ray-3cf-uk01(英国BBC)
      - v2ray-3cf-us02(美国)
      - v2ray-jm-jp03(日本)
      - v2ray-jm-tw01(台湾Netflix)
      - _v2ray-4zl-加拿大01
      - _v2ray-4zl-卢森堡01
      - _v2ray-4zl-印度01
      - _v2ray-4zl-台湾01(Netflix)
      - _v2ray-4zl-台湾02(Netflix)
      - _v2ray-4zl-台湾03(Netflix)
      - _v2ray-4zl-台湾04(Netflix)
      - _v2ray-4zl-土耳其01
      - _v2ray-4zl-巴西01
      - _v2ray-4zl-德国01
      - _v2ray-4zl-摩尔多卡01
      - _v2ray-4zl-新加坡01(Netflix)
      - _v2ray-4zl-新加坡02
      - _v2ray-4zl-新加坡03
      - _v2ray-4zl-新西伯利亚01(俄罗斯Netflix)
      - _v2ray-4zl-新西伯利亚02(俄罗斯Netflix)
      - _v2ray-4zl-日本01(Netflix|Abema|...)
      - _v2ray-4zl-日本03
      - _v2ray-4zl-日本05(Netflix|Abema|...)
      - _v2ray-4zl-智利01
      - _v2ray-4zl-法国01
      - _v2ray-4zl-澳大利亚01
      - _v2ray-4zl-美国01
      - _v2ray-4zl-美国02
      - _v2ray-4zl-美国03(Netflix)
      - _v2ray-4zl-美国05
      - _v2ray-4zl-美国06
      - _v2ray-4zl-美国07
      - _v2ray-4zl-英国01【BBC】
      - _v2ray-4zl-荷兰01
      - _v2ray-4zl-菲律宾01
      - _v2ray-4zl-越南01(Netflix)
      - _v2ray-4zl-迪拜01
      - _v2ray-4zl-韩国01
      - _v2ray-4zl-韩国02
      - _v2ray-4zl-香港01
      - _v2ray-4zl-香港02
      - _v2ray-4zl-香港03-hkt(Netflix)
      - _v2ray-4zl-香港04
      - _v2ray-4zl-香港05(Netflix)
      - _v2ray-4zl-香港06-hkt(Netflix)
      - _v2ray-4zl-香港07-hgc
      - _v2ray-4zl-香港08
      - _v2ray-4zl-马来西亚01
      - _v2ray-ld-azhk02
      - _v2ray台湾04<<<江门移动
      - "_v2ray香港03-hkt<<<江门移动\t"
      - _v2ray香港06<<<江门移动
  -
    name: 🎬Youtube
    type: select
    proxies:
      - 🔰国外流量
      - v2ray-1az-az02(香港)
      - v2ray-1az-fr01(法国)
      - v2ray-1az-hk01(hgc香港Netflix)
      - v2ray-1az-hk02(香港)
      - v2ray-1az-hk03(香港Netflix)
      - v2ray-1az-hk04(香港Netflix)
      - v2ray-1az-hk05(hkbn香港Netflix)
      - v2ray-1az-hk07(hgc香港Netflix)
      - v2ray-1az-hk08(hgc香港Netflix)
      - v2ray-1az-hl01(荷兰)
      - v2ray-1az-jp01(日本Netflix|Abema|...)
      - v2ray-1az-jp02(日本Netflix|Abema|...)
      - v2ray-1az-jp03(日本|新加坡Netflix)
      - v2ray-1az-jp05(日本Netflix|Abema|...)
      - v2ray-1az-kr01(韩国)
      - v2ray-1az-kr02(韩国)
      - v2ray-1az-lu01(卢森堡)
      - v2ray-1az-mol01(摩尔多卡)
      - v2ray-1az-my01(马来西亚)
      - v2ray-1az-ru01(俄罗斯netflix)
      - v2ray-1az-ru02(俄罗斯netflix)
      - v2ray-1az-sgp01(新加坡Netflix)
      - v2ray-1az-sgp02
      - v2ray-1az-tw01(台湾Netflix)
      - v2ray-1az-tw02(台湾Netflix)
      - v2ray-1az-tw03(台湾Netflix)
      - v2ray-1az-tw04(台湾Netflix)
      - v2ray-1az-us02(美国)
      - v2ray-1az-us03(美国Netflix)
      - v2ray-1az-us05(美国Netflix)
      - v2ray-1az-us06(美国)
      - v2ray-1az-vn01(越南Netflix)
      - v2ray-2ah-az02(香港)
      - v2ray-2ah-br01(巴西)
      - v2ray-2ah-can01(加拿大)
      - v2ray-2ah-db01(迪拜)
      - v2ray-2ah-hk02(香港)
      - v2ray-2ah-hk03(香港Netflix)
      - v2ray-2ah-hk04(香港Netflix)
      - v2ray-2ah-hk05(香港)
      - v2ray-2ah-hk06(hkt香港Netflix)
      - v2ray-2ah-hk07(hgc香港Netflix)
      - v2ray-2ah-hk08(hgc香港Netflix)
      - v2ray-2ah-jp01(日本)
      - v2ray-2ah-jp02(日本Netflix|Abema|...)
      - v2ray-2ah-jp03(日本)
      - v2ray-2ah-jp05(日本Netflix|Abema|...)
      - v2ray-2ah-kr01(韩国)
      - v2ray-2ah-kr02(韩国)
      - v2ray-2ah-ph01(菲律宾)
      - v2ray-2ah-ru01(俄罗斯)
      - v2ray-2ah-sgp01(新加坡)
      - v2ray-2ah-tw01(台湾Netflix)
      - v2ray-2ah-tw03(台湾Netflix)
      - v2ray-2ah-tw04(台湾Netflix)
      - v2ray-2ah-us05(美国)
      - v2ray-2ah-us06(美国)
      - v2ray-2ah-us07(美国流媒体解锁)
      - v2ray-2ah-vn01(越南Netflix)
      - v2ray-3cf-aus01(澳大利亚)
      - v2ray-3cf-br01(巴西)
      - v2ray-3cf-can01(加拿大)
      - v2ray-3cf-cl01(智利)
      - v2ray-3cf-db01(迪拜)
      - v2ray-3cf-ger01(德国)
      - v2ray-3cf-kr02(韩国)
      - v2ray-3cf-lu01(卢森堡)
      - v2ray-3cf-my01(马来西亚)
      - v2ray-3cf-ph01(菲律宾)
      - v2ray-3cf-tr01(土耳其)
      - v2ray-3cf-uk01(英国BBC)
      - v2ray-3cf-us02(美国)
      - v2ray-jm-jp03(日本)
      - v2ray-jm-tw01(台湾Netflix)
      - _v2ray-4zl-加拿大01
      - _v2ray-4zl-卢森堡01
      - _v2ray-4zl-印度01
      - _v2ray-4zl-台湾01(Netflix)
      - _v2ray-4zl-台湾02(Netflix)
      - _v2ray-4zl-台湾03(Netflix)
      - _v2ray-4zl-台湾04(Netflix)
      - _v2ray-4zl-土耳其01
      - _v2ray-4zl-巴西01
      - _v2ray-4zl-德国01
      - _v2ray-4zl-摩尔多卡01
      - _v2ray-4zl-新加坡01(Netflix)
      - _v2ray-4zl-新加坡02
      - _v2ray-4zl-新加坡03
      - _v2ray-4zl-新西伯利亚01(俄罗斯Netflix)
      - _v2ray-4zl-新西伯利亚02(俄罗斯Netflix)
      - _v2ray-4zl-日本01(Netflix|Abema|...)
      - _v2ray-4zl-日本03
      - _v2ray-4zl-日本05(Netflix|Abema|...)
      - _v2ray-4zl-智利01
      - _v2ray-4zl-法国01
      - _v2ray-4zl-澳大利亚01
      - _v2ray-4zl-美国01
      - _v2ray-4zl-美国02
      - _v2ray-4zl-美国03(Netflix)
      - _v2ray-4zl-美国05
      - _v2ray-4zl-美国06
      - _v2ray-4zl-美国07
      - _v2ray-4zl-英国01【BBC】
      - _v2ray-4zl-荷兰01
      - _v2ray-4zl-菲律宾01
      - _v2ray-4zl-越南01(Netflix)
      - _v2ray-4zl-迪拜01
      - _v2ray-4zl-韩国01
      - _v2ray-4zl-韩国02
      - _v2ray-4zl-香港01
      - _v2ray-4zl-香港02
      - _v2ray-4zl-香港03-hkt(Netflix)
      - _v2ray-4zl-香港04
      - _v2ray-4zl-香港05(Netflix)
      - _v2ray-4zl-香港06-hkt(Netflix)
      - _v2ray-4zl-香港07-hgc
      - _v2ray-4zl-香港08
      - _v2ray-4zl-马来西亚01
      - _v2ray-ld-azhk02
      - _v2ray台湾04<<<江门移动
      - "_v2ray香港03-hkt<<<江门移动\t"
      - _v2ray香港06<<<江门移动
  -
    name: 🎬Netflix
    type: select
    proxies:
      - 🔰国外流量
      - v2ray-1az-az02(香港)
      - v2ray-1az-fr01(法国)
      - v2ray-1az-hk01(hgc香港Netflix)
      - v2ray-1az-hk02(香港)
      - v2ray-1az-hk03(香港Netflix)
      - v2ray-1az-hk04(香港Netflix)
      - v2ray-1az-hk05(hkbn香港Netflix)
      - v2ray-1az-hk07(hgc香港Netflix)
      - v2ray-1az-hk08(hgc香港Netflix)
      - v2ray-1az-hl01(荷兰)
      - v2ray-1az-jp01(日本Netflix|Abema|...)
      - v2ray-1az-jp02(日本Netflix|Abema|...)
      - v2ray-1az-jp03(日本|新加坡Netflix)
      - v2ray-1az-jp05(日本Netflix|Abema|...)
      - v2ray-1az-kr01(韩国)
      - v2ray-1az-kr02(韩国)
      - v2ray-1az-lu01(卢森堡)
      - v2ray-1az-mol01(摩尔多卡)
      - v2ray-1az-my01(马来西亚)
      - v2ray-1az-ru01(俄罗斯netflix)
      - v2ray-1az-ru02(俄罗斯netflix)
      - v2ray-1az-sgp01(新加坡Netflix)
      - v2ray-1az-sgp02
      - v2ray-1az-tw01(台湾Netflix)
      - v2ray-1az-tw02(台湾Netflix)
      - v2ray-1az-tw03(台湾Netflix)
      - v2ray-1az-tw04(台湾Netflix)
      - v2ray-1az-us02(美国)
      - v2ray-1az-us03(美国Netflix)
      - v2ray-1az-us05(美国Netflix)
      - v2ray-1az-us06(美国)
      - v2ray-1az-vn01(越南Netflix)
      - v2ray-2ah-az02(香港)
      - v2ray-2ah-br01(巴西)
      - v2ray-2ah-can01(加拿大)
      - v2ray-2ah-db01(迪拜)
      - v2ray-2ah-hk02(香港)
      - v2ray-2ah-hk03(香港Netflix)
      - v2ray-2ah-hk04(香港Netflix)
      - v2ray-2ah-hk05(香港)
      - v2ray-2ah-hk06(hkt香港Netflix)
      - v2ray-2ah-hk07(hgc香港Netflix)
      - v2ray-2ah-hk08(hgc香港Netflix)
      - v2ray-2ah-jp01(日本)
      - v2ray-2ah-jp02(日本Netflix|Abema|...)
      - v2ray-2ah-jp03(日本)
      - v2ray-2ah-jp05(日本Netflix|Abema|...)
      - v2ray-2ah-kr01(韩国)
      - v2ray-2ah-kr02(韩国)
      - v2ray-2ah-ph01(菲律宾)
      - v2ray-2ah-ru01(俄罗斯)
      - v2ray-2ah-sgp01(新加坡)
      - v2ray-2ah-tw01(台湾Netflix)
      - v2ray-2ah-tw03(台湾Netflix)
      - v2ray-2ah-tw04(台湾Netflix)
      - v2ray-2ah-us05(美国)
      - v2ray-2ah-us06(美国)
      - v2ray-2ah-us07(美国流媒体解锁)
      - v2ray-2ah-vn01(越南Netflix)
      - v2ray-3cf-aus01(澳大利亚)
      - v2ray-3cf-br01(巴西)
      - v2ray-3cf-can01(加拿大)
      - v2ray-3cf-cl01(智利)
      - v2ray-3cf-db01(迪拜)
      - v2ray-3cf-ger01(德国)
      - v2ray-3cf-kr02(韩国)
      - v2ray-3cf-lu01(卢森堡)
      - v2ray-3cf-my01(马来西亚)
      - v2ray-3cf-ph01(菲律宾)
      - v2ray-3cf-tr01(土耳其)
      - v2ray-3cf-uk01(英国BBC)
      - v2ray-3cf-us02(美国)
      - v2ray-jm-jp03(日本)
      - v2ray-jm-tw01(台湾Netflix)
      - _v2ray-4zl-加拿大01
      - _v2ray-4zl-卢森堡01
      - _v2ray-4zl-印度01
      - _v2ray-4zl-台湾01(Netflix)
      - _v2ray-4zl-台湾02(Netflix)
      - _v2ray-4zl-台湾03(Netflix)
      - _v2ray-4zl-台湾04(Netflix)
      - _v2ray-4zl-土耳其01
      - _v2ray-4zl-巴西01
      - _v2ray-4zl-德国01
      - _v2ray-4zl-摩尔多卡01
      - _v2ray-4zl-新加坡01(Netflix)
      - _v2ray-4zl-新加坡02
      - _v2ray-4zl-新加坡03
      - _v2ray-4zl-新西伯利亚01(俄罗斯Netflix)
      - _v2ray-4zl-新西伯利亚02(俄罗斯Netflix)
      - _v2ray-4zl-日本01(Netflix|Abema|...)
      - _v2ray-4zl-日本03
      - _v2ray-4zl-日本05(Netflix|Abema|...)
      - _v2ray-4zl-智利01
      - _v2ray-4zl-法国01
      - _v2ray-4zl-澳大利亚01
      - _v2ray-4zl-美国01
      - _v2ray-4zl-美国02
      - _v2ray-4zl-美国03(Netflix)
      - _v2ray-4zl-美国05
      - _v2ray-4zl-美国06
      - _v2ray-4zl-美国07
      - _v2ray-4zl-英国01【BBC】
      - _v2ray-4zl-荷兰01
      - _v2ray-4zl-菲律宾01
      - _v2ray-4zl-越南01(Netflix)
      - _v2ray-4zl-迪拜01
      - _v2ray-4zl-韩国01
      - _v2ray-4zl-韩国02
      - _v2ray-4zl-香港01
      - _v2ray-4zl-香港02
      - _v2ray-4zl-香港03-hkt(Netflix)
      - _v2ray-4zl-香港04
      - _v2ray-4zl-香港05(Netflix)
      - _v2ray-4zl-香港06-hkt(Netflix)
      - _v2ray-4zl-香港07-hgc
      - _v2ray-4zl-香港08
      - _v2ray-4zl-马来西亚01
      - _v2ray-ld-azhk02
      - _v2ray台湾04<<<江门移动
      - "_v2ray香港03-hkt<<<江门移动\t"
      - _v2ray香港06<<<江门移动
  -
    name: 🎬哔哩哔哩
    type: select
    proxies:
      - 🚀直接连接
      - v2ray-1az-az02(香港)
      - v2ray-1az-fr01(法国)
      - v2ray-1az-hk01(hgc香港Netflix)
      - v2ray-1az-hk02(香港)
      - v2ray-1az-hk03(香港Netflix)
      - v2ray-1az-hk04(香港Netflix)
      - v2ray-1az-hk05(hkbn香港Netflix)
      - v2ray-1az-hk07(hgc香港Netflix)
      - v2ray-1az-hk08(hgc香港Netflix)
      - v2ray-1az-hl01(荷兰)
      - v2ray-1az-jp01(日本Netflix|Abema|...)
      - v2ray-1az-jp02(日本Netflix|Abema|...)
      - v2ray-1az-jp03(日本|新加坡Netflix)
      - v2ray-1az-jp05(日本Netflix|Abema|...)
      - v2ray-1az-kr01(韩国)
      - v2ray-1az-kr02(韩国)
      - v2ray-1az-lu01(卢森堡)
      - v2ray-1az-mol01(摩尔多卡)
      - v2ray-1az-my01(马来西亚)
      - v2ray-1az-ru01(俄罗斯netflix)
      - v2ray-1az-ru02(俄罗斯netflix)
      - v2ray-1az-sgp01(新加坡Netflix)
      - v2ray-1az-sgp02
      - v2ray-1az-tw01(台湾Netflix)
      - v2ray-1az-tw02(台湾Netflix)
      - v2ray-1az-tw03(台湾Netflix)
      - v2ray-1az-tw04(台湾Netflix)
      - v2ray-1az-us02(美国)
      - v2ray-1az-us03(美国Netflix)
      - v2ray-1az-us05(美国Netflix)
      - v2ray-1az-us06(美国)
      - v2ray-1az-vn01(越南Netflix)
      - v2ray-2ah-az02(香港)
      - v2ray-2ah-br01(巴西)
      - v2ray-2ah-can01(加拿大)
      - v2ray-2ah-db01(迪拜)
      - v2ray-2ah-hk02(香港)
      - v2ray-2ah-hk03(香港Netflix)
      - v2ray-2ah-hk04(香港Netflix)
      - v2ray-2ah-hk05(香港)
      - v2ray-2ah-hk06(hkt香港Netflix)
      - v2ray-2ah-hk07(hgc香港Netflix)
      - v2ray-2ah-hk08(hgc香港Netflix)
      - v2ray-2ah-jp01(日本)
      - v2ray-2ah-jp02(日本Netflix|Abema|...)
      - v2ray-2ah-jp03(日本)
      - v2ray-2ah-jp05(日本Netflix|Abema|...)
      - v2ray-2ah-kr01(韩国)
      - v2ray-2ah-kr02(韩国)
      - v2ray-2ah-ph01(菲律宾)
      - v2ray-2ah-ru01(俄罗斯)
      - v2ray-2ah-sgp01(新加坡)
      - v2ray-2ah-tw01(台湾Netflix)
      - v2ray-2ah-tw03(台湾Netflix)
      - v2ray-2ah-tw04(台湾Netflix)
      - v2ray-2ah-us05(美国)
      - v2ray-2ah-us06(美国)
      - v2ray-2ah-us07(美国流媒体解锁)
      - v2ray-2ah-vn01(越南Netflix)
      - v2ray-3cf-aus01(澳大利亚)
      - v2ray-3cf-br01(巴西)
      - v2ray-3cf-can01(加拿大)
      - v2ray-3cf-cl01(智利)
      - v2ray-3cf-db01(迪拜)
      - v2ray-3cf-ger01(德国)
      - v2ray-3cf-kr02(韩国)
      - v2ray-3cf-lu01(卢森堡)
      - v2ray-3cf-my01(马来西亚)
      - v2ray-3cf-ph01(菲律宾)
      - v2ray-3cf-tr01(土耳其)
      - v2ray-3cf-uk01(英国BBC)
      - v2ray-3cf-us02(美国)
      - v2ray-jm-jp03(日本)
      - v2ray-jm-tw01(台湾Netflix)
      - _v2ray-4zl-加拿大01
      - _v2ray-4zl-卢森堡01
      - _v2ray-4zl-印度01
      - _v2ray-4zl-台湾01(Netflix)
      - _v2ray-4zl-台湾02(Netflix)
      - _v2ray-4zl-台湾03(Netflix)
      - _v2ray-4zl-台湾04(Netflix)
      - _v2ray-4zl-土耳其01
      - _v2ray-4zl-巴西01
      - _v2ray-4zl-德国01
      - _v2ray-4zl-摩尔多卡01
      - _v2ray-4zl-新加坡01(Netflix)
      - _v2ray-4zl-新加坡02
      - _v2ray-4zl-新加坡03
      - _v2ray-4zl-新西伯利亚01(俄罗斯Netflix)
      - _v2ray-4zl-新西伯利亚02(俄罗斯Netflix)
      - _v2ray-4zl-日本01(Netflix|Abema|...)
      - _v2ray-4zl-日本03
      - _v2ray-4zl-日本05(Netflix|Abema|...)
      - _v2ray-4zl-智利01
      - _v2ray-4zl-法国01
      - _v2ray-4zl-澳大利亚01
      - _v2ray-4zl-美国01
      - _v2ray-4zl-美国02
      - _v2ray-4zl-美国03(Netflix)
      - _v2ray-4zl-美国05
      - _v2ray-4zl-美国06
      - _v2ray-4zl-美国07
      - _v2ray-4zl-英国01【BBC】
      - _v2ray-4zl-荷兰01
      - _v2ray-4zl-菲律宾01
      - _v2ray-4zl-越南01(Netflix)
      - _v2ray-4zl-迪拜01
      - _v2ray-4zl-韩国01
      - _v2ray-4zl-韩国02
      - _v2ray-4zl-香港01
      - _v2ray-4zl-香港02
      - _v2ray-4zl-香港03-hkt(Netflix)
      - _v2ray-4zl-香港04
      - _v2ray-4zl-香港05(Netflix)
      - _v2ray-4zl-香港06-hkt(Netflix)
      - _v2ray-4zl-香港07-hgc
      - _v2ray-4zl-香港08
      - _v2ray-4zl-马来西亚01
      - _v2ray-ld-azhk02
      - _v2ray台湾04<<<江门移动
      - "_v2ray香港03-hkt<<<江门移动\t"
      - _v2ray香港06<<<江门移动
  -
    name: 🎬国外媒体
    type: select
    proxies:
      - 🔰国外流量
      - v2ray-1az-az02(香港)
      - v2ray-1az-fr01(法国)
      - v2ray-1az-hk01(hgc香港Netflix)
      - v2ray-1az-hk02(香港)
      - v2ray-1az-hk03(香港Netflix)
      - v2ray-1az-hk04(香港Netflix)
      - v2ray-1az-hk05(hkbn香港Netflix)
      - v2ray-1az-hk07(hgc香港Netflix)
      - v2ray-1az-hk08(hgc香港Netflix)
      - v2ray-1az-hl01(荷兰)
      - v2ray-1az-jp01(日本Netflix|Abema|...)
      - v2ray-1az-jp02(日本Netflix|Abema|...)
      - v2ray-1az-jp03(日本|新加坡Netflix)
      - v2ray-1az-jp05(日本Netflix|Abema|...)
      - v2ray-1az-kr01(韩国)
      - v2ray-1az-kr02(韩国)
      - v2ray-1az-lu01(卢森堡)
      - v2ray-1az-mol01(摩尔多卡)
      - v2ray-1az-my01(马来西亚)
      - v2ray-1az-ru01(俄罗斯netflix)
      - v2ray-1az-ru02(俄罗斯netflix)
      - v2ray-1az-sgp01(新加坡Netflix)
      - v2ray-1az-sgp02
      - v2ray-1az-tw01(台湾Netflix)
      - v2ray-1az-tw02(台湾Netflix)
      - v2ray-1az-tw03(台湾Netflix)
      - v2ray-1az-tw04(台湾Netflix)
      - v2ray-1az-us02(美国)
      - v2ray-1az-us03(美国Netflix)
      - v2ray-1az-us05(美国Netflix)
      - v2ray-1az-us06(美国)
      - v2ray-1az-vn01(越南Netflix)
      - v2ray-2ah-az02(香港)
      - v2ray-2ah-br01(巴西)
      - v2ray-2ah-can01(加拿大)
      - v2ray-2ah-db01(迪拜)
      - v2ray-2ah-hk02(香港)
      - v2ray-2ah-hk03(香港Netflix)
      - v2ray-2ah-hk04(香港Netflix)
      - v2ray-2ah-hk05(香港)
      - v2ray-2ah-hk06(hkt香港Netflix)
      - v2ray-2ah-hk07(hgc香港Netflix)
      - v2ray-2ah-hk08(hgc香港Netflix)
      - v2ray-2ah-jp01(日本)
      - v2ray-2ah-jp02(日本Netflix|Abema|...)
      - v2ray-2ah-jp03(日本)
      - v2ray-2ah-jp05(日本Netflix|Abema|...)
      - v2ray-2ah-kr01(韩国)
      - v2ray-2ah-kr02(韩国)
      - v2ray-2ah-ph01(菲律宾)
      - v2ray-2ah-ru01(俄罗斯)
      - v2ray-2ah-sgp01(新加坡)
      - v2ray-2ah-tw01(台湾Netflix)
      - v2ray-2ah-tw03(台湾Netflix)
      - v2ray-2ah-tw04(台湾Netflix)
      - v2ray-2ah-us05(美国)
      - v2ray-2ah-us06(美国)
      - v2ray-2ah-us07(美国流媒体解锁)
      - v2ray-2ah-vn01(越南Netflix)
      - v2ray-3cf-aus01(澳大利亚)
      - v2ray-3cf-br01(巴西)
      - v2ray-3cf-can01(加拿大)
      - v2ray-3cf-cl01(智利)
      - v2ray-3cf-db01(迪拜)
      - v2ray-3cf-ger01(德国)
      - v2ray-3cf-kr02(韩国)
      - v2ray-3cf-lu01(卢森堡)
      - v2ray-3cf-my01(马来西亚)
      - v2ray-3cf-ph01(菲律宾)
      - v2ray-3cf-tr01(土耳其)
      - v2ray-3cf-uk01(英国BBC)
      - v2ray-3cf-us02(美国)
      - v2ray-jm-jp03(日本)
      - v2ray-jm-tw01(台湾Netflix)
      - _v2ray-4zl-加拿大01
      - _v2ray-4zl-卢森堡01
      - _v2ray-4zl-印度01
      - _v2ray-4zl-台湾01(Netflix)
      - _v2ray-4zl-台湾02(Netflix)
      - _v2ray-4zl-台湾03(Netflix)
      - _v2ray-4zl-台湾04(Netflix)
      - _v2ray-4zl-土耳其01
      - _v2ray-4zl-巴西01
      - _v2ray-4zl-德国01
      - _v2ray-4zl-摩尔多卡01
      - _v2ray-4zl-新加坡01(Netflix)
      - _v2ray-4zl-新加坡02
      - _v2ray-4zl-新加坡03
      - _v2ray-4zl-新西伯利亚01(俄罗斯Netflix)
      - _v2ray-4zl-新西伯利亚02(俄罗斯Netflix)
      - _v2ray-4zl-日本01(Netflix|Abema|...)
      - _v2ray-4zl-日本03
      - _v2ray-4zl-日本05(Netflix|Abema|...)
      - _v2ray-4zl-智利01
      - _v2ray-4zl-法国01
      - _v2ray-4zl-澳大利亚01
      - _v2ray-4zl-美国01
      - _v2ray-4zl-美国02
      - _v2ray-4zl-美国03(Netflix)
      - _v2ray-4zl-美国05
      - _v2ray-4zl-美国06
      - _v2ray-4zl-美国07
      - _v2ray-4zl-英国01【BBC】
      - _v2ray-4zl-荷兰01
      - _v2ray-4zl-菲律宾01
      - _v2ray-4zl-越南01(Netflix)
      - _v2ray-4zl-迪拜01
      - _v2ray-4zl-韩国01
      - _v2ray-4zl-韩国02
      - _v2ray-4zl-香港01
      - _v2ray-4zl-香港02
      - _v2ray-4zl-香港03-hkt(Netflix)
      - _v2ray-4zl-香港04
      - _v2ray-4zl-香港05(Netflix)
      - _v2ray-4zl-香港06-hkt(Netflix)
      - _v2ray-4zl-香港07-hgc
      - _v2ray-4zl-香港08
      - _v2ray-4zl-马来西亚01
      - _v2ray-ld-azhk02
      - _v2ray台湾04<<<江门移动
      - "_v2ray香港03-hkt<<<江门移动\t"
      - _v2ray香港06<<<江门移动
  -
    name: 🍎苹果服务
    type: select
    proxies:
      - 🚀直接连接
      - 🔰国外流量
  -
    name: 🚀直接连接
    type: select
    proxies:
      - DIRECT


rules:
  - DOMAIN-SUFFIX,smtp,DIRECT
  - DOMAIN-KEYWORD,aria2,DIRECT

  - DOMAIN-SUFFIX,ampproject.org,🔰国外流量
  - DOMAIN-SUFFIX,appspot.com,🔰国外流量
  - DOMAIN-SUFFIX,blogger.com,🔰国外流量
  - DOMAIN-SUFFIX,getoutline.org,🔰国外流量
  - DOMAIN-SUFFIX,gvt0.com,🔰国外流量
  - DOMAIN-SUFFIX,gvt1.com,🔰国外流量
  - DOMAIN-SUFFIX,gvt3.com,🔰国外流量
  - DOMAIN-SUFFIX,xn--ngstr-lra8j.com,🔰国外流量
  - DOMAIN-KEYWORD,google,🔰国外流量
  - DOMAIN-KEYWORD,blogspot,🔰国外流量
  - DOMAIN-SUFFIX,onedrive.live.com,🔰国外流量
  - DOMAIN-SUFFIX,xboxlive.com,🔰国外流量
  - DOMAIN-SUFFIX,cdninstagram.com,🔰国外流量
  - DOMAIN-SUFFIX,fb.com,🔰国外流量
  - DOMAIN-SUFFIX,fb.me,🔰国外流量
  - DOMAIN-SUFFIX,fbaddins.com,🔰国外流量
  - DOMAIN-SUFFIX,fbcdn.net,🔰国外流量
  - DOMAIN-SUFFIX,fbsbx.com,🔰国外流量
  - DOMAIN-SUFFIX,fbworkmail.com,🔰国外流量
  - DOMAIN-SUFFIX,instagram.com,🔰国外流量
  - DOMAIN-SUFFIX,m.me,🔰国外流量
  - DOMAIN-SUFFIX,messenger.com,🔰国外流量
  - DOMAIN-SUFFIX,oculus.com,🔰国外流量
  - DOMAIN-SUFFIX,oculuscdn.com,🔰国外流量
  - DOMAIN-SUFFIX,rocksdb.org,🔰国外流量
  - DOMAIN-SUFFIX,whatsapp.com,🔰国外流量
  - DOMAIN-SUFFIX,whatsapp.net,🔰国外流量
  - DOMAIN-KEYWORD,facebook,🔰国外流量
  - IP-CIDR,3.123.36.126/32,🔰国外流量,no-resolve
  - IP-CIDR,35.157.215.84/32,🔰国外流量,no-resolve
  - IP-CIDR,35.157.217.255/32,🔰国外流量,no-resolve
  - IP-CIDR,52.58.209.134/32,🔰国外流量,no-resolve
  - IP-CIDR,54.93.124.31/32,🔰国外流量,no-resolve
  - IP-CIDR,54.162.243.80/32,🔰国外流量,no-resolve
  - IP-CIDR,54.173.34.141/32,🔰国外流量,no-resolve
  - IP-CIDR,54.235.23.242/32,🔰国外流量,no-resolve
  - IP-CIDR,169.45.248.118/32,🔰国外流量,no-resolve
  - DOMAIN-SUFFIX,pscp.tv,🔰国外流量
  - DOMAIN-SUFFIX,periscope.tv,🔰国外流量
  - DOMAIN-SUFFIX,t.co,🔰国外流量
  - DOMAIN-SUFFIX,twimg.co,🔰国外流量
  - DOMAIN-SUFFIX,twimg.com,🔰国外流量
  - DOMAIN-SUFFIX,twitpic.com,🔰国外流量
  - DOMAIN-SUFFIX,vine.co,🔰国外流量
  - DOMAIN-KEYWORD,twitter,🔰国外流量
  - DOMAIN-SUFFIX,t.me,🔰国外流量
  - DOMAIN-SUFFIX,tdesktop.com,🔰国外流量
  - DOMAIN-SUFFIX,telegra.ph,🔰国外流量
  - DOMAIN-SUFFIX,telegram.me,🔰国外流量
  - DOMAIN-SUFFIX,telegram.org,🔰国外流量
  - IP-CIDR,91.108.4.0/22,🔰国外流量,no-resolve
  - IP-CIDR,91.108.8.0/22,🔰国外流量,no-resolve
  - IP-CIDR,91.108.12.0/22,🔰国外流量,no-resolve
  - IP-CIDR,91.108.16.0/22,🔰国外流量,no-resolve
  - IP-CIDR,91.108.56.0/22,🔰国外流量,no-resolve
  - IP-CIDR,149.154.160.0/20,🔰国外流量,no-resolve
  - IP-CIDR6,2001:b28:f23d::/48,🔰国外流量,no-resolve
  - IP-CIDR6,2001:b28:f23f::/48,🔰国外流量,no-resolve
  - IP-CIDR6,2001:67c:4e8::/48,🔰国外流量,no-resolve
  - DOMAIN-SUFFIX,line.me,🔰国外流量
  - DOMAIN-SUFFIX,line-apps.com,🔰国外流量
  - DOMAIN-SUFFIX,line-scdn.net,🔰国外流量
  - DOMAIN-SUFFIX,naver.jp,🔰国外流量
  - IP-CIDR,103.2.30.0/23,🔰国外流量,no-resolve
  - IP-CIDR,125.209.208.0/20,🔰国外流量,no-resolve
  - IP-CIDR,147.92.128.0/17,🔰国外流量,no-resolve
  - IP-CIDR,203.104.144.0/21,🔰国外流量,no-resolve
  - DOMAIN-SUFFIX,4shared.com,🔰国外流量
  - DOMAIN-SUFFIX,520cc.cc,🔰国外流量
  - DOMAIN-SUFFIX,881903.com,🔰国外流量
  - DOMAIN-SUFFIX,9cache.com,🔰国外流量
  - DOMAIN-SUFFIX,9gag.com,🔰国外流量
  - DOMAIN-SUFFIX,abc.com,🔰国外流量
  - DOMAIN-SUFFIX,abc.net.au,🔰国外流量
  - DOMAIN-SUFFIX,abebooks.com,🔰国外流量
  - DOMAIN-SUFFIX,amazon.co.jp,🔰国外流量
  - DOMAIN-SUFFIX,apigee.com,🔰国外流量
  - DOMAIN-SUFFIX,apk-dl.com,🔰国外流量
  - DOMAIN-SUFFIX,apkfind.com,🔰国外流量
  - DOMAIN-SUFFIX,apkmirror.com,🔰国外流量
  - DOMAIN-SUFFIX,apkmonk.com,🔰国外流量
  - DOMAIN-SUFFIX,apkpure.com,🔰国外流量
  - DOMAIN-SUFFIX,aptoide.com,🔰国外流量
  - DOMAIN-SUFFIX,archive.is,🔰国外流量
  - DOMAIN-SUFFIX,archive.org,🔰国外流量
  - DOMAIN-SUFFIX,arte.tv,🔰国外流量
  - DOMAIN-SUFFIX,artstation.com,🔰国外流量
  - DOMAIN-SUFFIX,arukas.io,🔰国外流量
  - DOMAIN-SUFFIX,ask.com,🔰国外流量
  - DOMAIN-SUFFIX,avg.com,🔰国外流量
  - DOMAIN-SUFFIX,avgle.com,🔰国外流量
  - DOMAIN-SUFFIX,badoo.com,🔰国外流量
  - DOMAIN-SUFFIX,bandwagonhost.com,🔰国外流量
  - DOMAIN-SUFFIX,bbc.com,🔰国外流量
  - DOMAIN-SUFFIX,behance.net,🔰国外流量
  - DOMAIN-SUFFIX,bibox.com,🔰国外流量
  - DOMAIN-SUFFIX,biggo.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,binance.com,🔰国外流量
  - DOMAIN-SUFFIX,bitcointalk.org,🔰国外流量
  - DOMAIN-SUFFIX,bitfinex.com,🔰国外流量
  - DOMAIN-SUFFIX,bitmex.com,🔰国外流量
  - DOMAIN-SUFFIX,bit-z.com,🔰国外流量
  - DOMAIN-SUFFIX,bloglovin.com,🔰国外流量
  - DOMAIN-SUFFIX,bloomberg.cn,🔰国外流量
  - DOMAIN-SUFFIX,bloomberg.com,🔰国外流量
  - DOMAIN-SUFFIX,blubrry.com,🔰国外流量
  - DOMAIN-SUFFIX,book.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,booklive.jp,🔰国外流量
  - DOMAIN-SUFFIX,books.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,boslife.net,🔰国外流量
  - DOMAIN-SUFFIX,box.com,🔰国外流量
  - DOMAIN-SUFFIX,businessinsider.com,🔰国外流量
  - DOMAIN-SUFFIX,bwh1.net,🔰国外流量
  - DOMAIN-SUFFIX,castbox.fm,🔰国外流量
  - DOMAIN-SUFFIX,cbc.ca,🔰国外流量
  - DOMAIN-SUFFIX,cdw.com,🔰国外流量
  - DOMAIN-SUFFIX,change.org,🔰国外流量
  - DOMAIN-SUFFIX,channelnewsasia.com,🔰国外流量
  - DOMAIN-SUFFIX,ck101.com,🔰国外流量
  - DOMAIN-SUFFIX,clarionproject.org,🔰国外流量
  - DOMAIN-SUFFIX,clyp.it,🔰国外流量
  - DOMAIN-SUFFIX,cna.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,comparitech.com,🔰国外流量
  - DOMAIN-SUFFIX,conoha.jp,🔰国外流量
  - DOMAIN-SUFFIX,crucial.com,🔰国外流量
  - DOMAIN-SUFFIX,cts.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,cw.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,cyberctm.com,🔰国外流量
  - DOMAIN-SUFFIX,dailymotion.com,🔰国外流量
  - DOMAIN-SUFFIX,dailyview.tw,🔰国外流量
  - DOMAIN-SUFFIX,daum.net,🔰国外流量
  - DOMAIN-SUFFIX,daumcdn.net,🔰国外流量
  - DOMAIN-SUFFIX,dcard.tw,🔰国外流量
  - DOMAIN-SUFFIX,deepdiscount.com,🔰国外流量
  - DOMAIN-SUFFIX,depositphotos.com,🔰国外流量
  - DOMAIN-SUFFIX,deviantart.com,🔰国外流量
  - DOMAIN-SUFFIX,disconnect.me,🔰国外流量
  - DOMAIN-SUFFIX,discordapp.com,🔰国外流量
  - DOMAIN-SUFFIX,discordapp.net,🔰国外流量
  - DOMAIN-SUFFIX,disqus.com,🔰国外流量
  - DOMAIN-SUFFIX,dlercloud.com,🔰国外流量
  - DOMAIN-SUFFIX,dns2go.com,🔰国外流量
  - DOMAIN-SUFFIX,dowjones.com,🔰国外流量
  - DOMAIN-SUFFIX,dropbox.com,🔰国外流量
  - DOMAIN-SUFFIX,dropboxusercontent.com,🔰国外流量
  - DOMAIN-SUFFIX,duckduckgo.com,🔰国外流量
  - DOMAIN-SUFFIX,dw.com,🔰国外流量
  - DOMAIN-SUFFIX,dynu.com,🔰国外流量
  - DOMAIN-SUFFIX,earthcam.com,🔰国外流量
  - DOMAIN-SUFFIX,ebookservice.tw,🔰国外流量
  - DOMAIN-SUFFIX,economist.com,🔰国外流量
  - DOMAIN-SUFFIX,edgecastcdn.net,🔰国外流量
  - DOMAIN-SUFFIX,edu,🔰国外流量
  - DOMAIN-SUFFIX,elpais.com,🔰国外流量
  - DOMAIN-SUFFIX,enanyang.my,🔰国外流量
  - DOMAIN-SUFFIX,encyclopedia.com,🔰国外流量
  - DOMAIN-SUFFIX,esoir.be,🔰国外流量
  - DOMAIN-SUFFIX,etherscan.io,🔰国外流量
  - DOMAIN-SUFFIX,euronews.com,🔰国外流量
  - DOMAIN-SUFFIX,evozi.com,🔰国外流量
  - DOMAIN-SUFFIX,feedly.com,🔰国外流量
  - DOMAIN-SUFFIX,firech.at,🔰国外流量
  - DOMAIN-SUFFIX,flickr.com,🔰国外流量
  - DOMAIN-SUFFIX,flitto.com,🔰国外流量
  - DOMAIN-SUFFIX,foreignpolicy.com,🔰国外流量
  - DOMAIN-SUFFIX,freebrowser.org,🔰国外流量
  - DOMAIN-SUFFIX,freewechat.com,🔰国外流量
  - DOMAIN-SUFFIX,freeweibo.com,🔰国外流量
  - DOMAIN-SUFFIX,friday.tw,🔰国外流量
  - DOMAIN-SUFFIX,ftchinese.com,🔰国外流量
  - DOMAIN-SUFFIX,ftimg.net,🔰国外流量
  - DOMAIN-SUFFIX,gate.io,🔰国外流量
  - DOMAIN-SUFFIX,getlantern.org,🔰国外流量
  - DOMAIN-SUFFIX,getsync.com,🔰国外流量
  - DOMAIN-SUFFIX,globalvoices.org,🔰国外流量
  - DOMAIN-SUFFIX,goo.ne.jp,🔰国外流量
  - DOMAIN-SUFFIX,goodreads.com,🔰国外流量
  - DOMAIN-SUFFIX,gov,🔰国外流量
  - DOMAIN-SUFFIX,gov.tw,🔰国外流量
  - DOMAIN-SUFFIX,greatfire.org,🔰国外流量
  - DOMAIN-SUFFIX,gumroad.com,🔰国外流量
  - DOMAIN-SUFFIX,hbg.com,🔰国外流量
  - DOMAIN-SUFFIX,heroku.com,🔰国外流量
  - DOMAIN-SUFFIX,hightail.com,🔰国外流量
  - DOMAIN-SUFFIX,hk01.com,🔰国外流量
  - DOMAIN-SUFFIX,hkbf.org,🔰国外流量
  - DOMAIN-SUFFIX,hkbookcity.com,🔰国外流量
  - DOMAIN-SUFFIX,hkej.com,🔰国外流量
  - DOMAIN-SUFFIX,hket.com,🔰国外流量
  - DOMAIN-SUFFIX,hkgolden.com,🔰国外流量
  - DOMAIN-SUFFIX,hootsuite.com,🔰国外流量
  - DOMAIN-SUFFIX,hudson.org,🔰国外流量
  - DOMAIN-SUFFIX,hyread.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,ibtimes.com,🔰国外流量
  - DOMAIN-SUFFIX,i-cable.com,🔰国外流量
  - DOMAIN-SUFFIX,icij.org,🔰国外流量
  - DOMAIN-SUFFIX,icoco.com,🔰国外流量
  - DOMAIN-SUFFIX,imgur.com,🔰国外流量
  - DOMAIN-SUFFIX,initiummall.com,🔰国外流量
  - DOMAIN-SUFFIX,insecam.org,🔰国外流量
  - DOMAIN-SUFFIX,ipfs.io,🔰国外流量
  - DOMAIN-SUFFIX,issuu.com,🔰国外流量
  - DOMAIN-SUFFIX,istockphoto.com,🔰国外流量
  - DOMAIN-SUFFIX,japantimes.co.jp,🔰国外流量
  - DOMAIN-SUFFIX,jiji.com,🔰国外流量
  - DOMAIN-SUFFIX,jinx.com,🔰国外流量
  - DOMAIN-SUFFIX,jkforum.net,🔰国外流量
  - DOMAIN-SUFFIX,joinmastodon.org,🔰国外流量
  - DOMAIN-SUFFIX,justmysocks.net,🔰国外流量
  - DOMAIN-SUFFIX,justpaste.it,🔰国外流量
  - DOMAIN-SUFFIX,kakao.com,🔰国外流量
  - DOMAIN-SUFFIX,kakaocorp.com,🔰国外流量
  - DOMAIN-SUFFIX,kik.com,🔰国外流量
  - DOMAIN-SUFFIX,kobo.com,🔰国外流量
  - DOMAIN-SUFFIX,kobobooks.com,🔰国外流量
  - DOMAIN-SUFFIX,kodingen.com,🔰国外流量
  - DOMAIN-SUFFIX,lemonde.fr,🔰国外流量
  - DOMAIN-SUFFIX,lepoint.fr,🔰国外流量
  - DOMAIN-SUFFIX,lihkg.com,🔰国外流量
  - DOMAIN-SUFFIX,listennotes.com,🔰国外流量
  - DOMAIN-SUFFIX,livestream.com,🔰国外流量
  - DOMAIN-SUFFIX,logmein.com,🔰国外流量
  - DOMAIN-SUFFIX,mail.ru,🔰国外流量
  - DOMAIN-SUFFIX,mailchimp.com,🔰国外流量
  - DOMAIN-SUFFIX,marc.info,🔰国外流量
  - DOMAIN-SUFFIX,matters.news,🔰国外流量
  - DOMAIN-SUFFIX,maying.co,🔰国外流量
  - DOMAIN-SUFFIX,medium.com,🔰国外流量
  - DOMAIN-SUFFIX,mega.nz,🔰国外流量
  - DOMAIN-SUFFIX,mil,🔰国外流量
  - DOMAIN-SUFFIX,mingpao.com,🔰国外流量
  - DOMAIN-SUFFIX,mobile01.com,🔰国外流量
  - DOMAIN-SUFFIX,myspace.com,🔰国外流量
  - DOMAIN-SUFFIX,myspacecdn.com,🔰国外流量
  - DOMAIN-SUFFIX,nanyang.com,🔰国外流量
  - DOMAIN-SUFFIX,naver.com,🔰国外流量
  - DOMAIN-SUFFIX,neowin.net,🔰国外流量
  - DOMAIN-SUFFIX,newstapa.org,🔰国外流量
  - DOMAIN-SUFFIX,nexitally.com,🔰国外流量
  - DOMAIN-SUFFIX,nhk.or.jp,🔰国外流量
  - DOMAIN-SUFFIX,nicovideo.jp,🔰国外流量
  - DOMAIN-SUFFIX,nii.ac.jp,🔰国外流量
  - DOMAIN-SUFFIX,nikkei.com,🔰国外流量
  - DOMAIN-SUFFIX,nofile.io,🔰国外流量
  - DOMAIN-SUFFIX,now.com,🔰国外流量
  - DOMAIN-SUFFIX,nrk.no,🔰国外流量
  - DOMAIN-SUFFIX,nyt.com,🔰国外流量
  - DOMAIN-SUFFIX,nytchina.com,🔰国外流量
  - DOMAIN-SUFFIX,nytcn.me,🔰国外流量
  - DOMAIN-SUFFIX,nytco.com,🔰国外流量
  - DOMAIN-SUFFIX,nytimes.com,🔰国外流量
  - DOMAIN-SUFFIX,nytimg.com,🔰国外流量
  - DOMAIN-SUFFIX,nytlog.com,🔰国外流量
  - DOMAIN-SUFFIX,nytstyle.com,🔰国外流量
  - DOMAIN-SUFFIX,ok.ru,🔰国外流量
  - DOMAIN-SUFFIX,okex.com,🔰国外流量
  - DOMAIN-SUFFIX,on.cc,🔰国外流量
  - DOMAIN-SUFFIX,orientaldaily.com.my,🔰国外流量
  - DOMAIN-SUFFIX,overcast.fm,🔰国外流量
  - DOMAIN-SUFFIX,paltalk.com,🔰国外流量
  - DOMAIN-SUFFIX,pao-pao.net,🔰国外流量
  - DOMAIN-SUFFIX,parsevideo.com,🔰国外流量
  - DOMAIN-SUFFIX,pbxes.com,🔰国外流量
  - DOMAIN-SUFFIX,pcdvd.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,pchome.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,pcloud.com,🔰国外流量
  - DOMAIN-SUFFIX,picacomic.com,🔰国外流量
  - DOMAIN-SUFFIX,pinimg.com,🔰国外流量
  - DOMAIN-SUFFIX,pixiv.net,🔰国外流量
  - DOMAIN-SUFFIX,player.fm,🔰国外流量
  - DOMAIN-SUFFIX,plurk.com,🔰国外流量
  - DOMAIN-SUFFIX,po18.tw,🔰国外流量
  - DOMAIN-SUFFIX,potato.im,🔰国外流量
  - DOMAIN-SUFFIX,potatso.com,🔰国外流量
  - DOMAIN-SUFFIX,prism-break.org,🔰国外流量
  - DOMAIN-SUFFIX,proxifier.com,🔰国外流量
  - DOMAIN-SUFFIX,pt.im,🔰国外流量
  - DOMAIN-SUFFIX,pts.org.tw,🔰国外流量
  - DOMAIN-SUFFIX,pubu.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,pubu.tw,🔰国外流量
  - DOMAIN-SUFFIX,pureapk.com,🔰国外流量
  - DOMAIN-SUFFIX,quora.com,🔰国外流量
  - DOMAIN-SUFFIX,quoracdn.net,🔰国外流量
  - DOMAIN-SUFFIX,rakuten.co.jp,🔰国外流量
  - DOMAIN-SUFFIX,readingtimes.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,readmoo.com,🔰国外流量
  - DOMAIN-SUFFIX,redbubble.com,🔰国外流量
  - DOMAIN-SUFFIX,reddit.com,🔰国外流量
  - DOMAIN-SUFFIX,redditmedia.com,🔰国外流量
  - DOMAIN-SUFFIX,resilio.com,🔰国外流量
  - DOMAIN-SUFFIX,reuters.com,🔰国外流量
  - DOMAIN-SUFFIX,reutersmedia.net,🔰国外流量
  - DOMAIN-SUFFIX,rfi.fr,🔰国外流量
  - DOMAIN-SUFFIX,rixcloud.com,🔰国外流量
  - DOMAIN-SUFFIX,roadshow.hk,🔰国外流量
  - DOMAIN-SUFFIX,scmp.com,🔰国外流量
  - DOMAIN-SUFFIX,scribd.com,🔰国外流量
  - DOMAIN-SUFFIX,seatguru.com,🔰国外流量
  - DOMAIN-SUFFIX,shadowsocks.org,🔰国外流量
  - DOMAIN-SUFFIX,shopee.tw,🔰国外流量
  - DOMAIN-SUFFIX,slideshare.net,🔰国外流量
  - DOMAIN-SUFFIX,softfamous.com,🔰国外流量
  - DOMAIN-SUFFIX,soundcloud.com,🔰国外流量
  - DOMAIN-SUFFIX,ssrcloud.org,🔰国外流量
  - DOMAIN-SUFFIX,startpage.com,🔰国外流量
  - DOMAIN-SUFFIX,steamcommunity.com,🔰国外流量
  - DOMAIN-SUFFIX,steemit.com,🔰国外流量
  - DOMAIN-SUFFIX,steemitwallet.com,🔰国外流量
  - DOMAIN-SUFFIX,t66y.com,🔰国外流量
  - DOMAIN-SUFFIX,tapatalk.com,🔰国外流量
  - DOMAIN-SUFFIX,teco-hk.org,🔰国外流量
  - DOMAIN-SUFFIX,teco-mo.org,🔰国外流量
  - DOMAIN-SUFFIX,teddysun.com,🔰国外流量
  - DOMAIN-SUFFIX,textnow.me,🔰国外流量
  - DOMAIN-SUFFIX,theguardian.com,🔰国外流量
  - DOMAIN-SUFFIX,theinitium.com,🔰国外流量
  - DOMAIN-SUFFIX,thetvdb.com,🔰国外流量
  - DOMAIN-SUFFIX,tineye.com,🔰国外流量
  - DOMAIN-SUFFIX,torproject.org,🔰国外流量
  - DOMAIN-SUFFIX,tumblr.com,🔰国外流量
  - DOMAIN-SUFFIX,turbobit.net,🔰国外流量
  - DOMAIN-SUFFIX,tutanota.com,🔰国外流量
  - DOMAIN-SUFFIX,tvboxnow.com,🔰国外流量
  - DOMAIN-SUFFIX,udn.com,🔰国外流量
  - DOMAIN-SUFFIX,unseen.is,🔰国外流量
  - DOMAIN-SUFFIX,upmedia.mg,🔰国外流量
  - DOMAIN-SUFFIX,uptodown.com,🔰国外流量
  - DOMAIN-SUFFIX,urbandictionary.com,🔰国外流量
  - DOMAIN-SUFFIX,ustream.tv,🔰国外流量
  - DOMAIN-SUFFIX,uwants.com,🔰国外流量
  - DOMAIN-SUFFIX,v2ray.com,🔰国外流量
  - DOMAIN-SUFFIX,viber.com,🔰国外流量
  - DOMAIN-SUFFIX,videopress.com,🔰国外流量
  - DOMAIN-SUFFIX,vimeo.com,🔰国外流量
  - DOMAIN-SUFFIX,voachinese.com,🔰国外流量
  - DOMAIN-SUFFIX,voanews.com,🔰国外流量
  - DOMAIN-SUFFIX,voxer.com,🔰国外流量
  - DOMAIN-SUFFIX,vzw.com,🔰国外流量
  - DOMAIN-SUFFIX,w3schools.com,🔰国外流量
  - DOMAIN-SUFFIX,washingtonpost.com,🔰国外流量
  - DOMAIN-SUFFIX,wattpad.com,🔰国外流量
  - DOMAIN-SUFFIX,whoer.net,🔰国外流量
  - DOMAIN-SUFFIX,wikimapia.org,🔰国外流量
  - DOMAIN-SUFFIX,wikipedia.org,🔰国外流量
  - DOMAIN-SUFFIX,wikiquote.org,🔰国外流量
  - DOMAIN-SUFFIX,wikiwand.com,🔰国外流量
  - DOMAIN-SUFFIX,winudf.com,🔰国外流量
  - DOMAIN-SUFFIX,wire.com,🔰国外流量
  - DOMAIN-SUFFIX,wordpress.com,🔰国外流量
  - DOMAIN-SUFFIX,workflow.is,🔰国外流量
  - DOMAIN-SUFFIX,worldcat.org,🔰国外流量
  - DOMAIN-SUFFIX,wsj.com,🔰国外流量
  - DOMAIN-SUFFIX,wsj.net,🔰国外流量
  - DOMAIN-SUFFIX,xhamster.com,🔰国外流量
  - DOMAIN-SUFFIX,xn--90wwvt03e.com,🔰国外流量
  - DOMAIN-SUFFIX,xn--i2ru8q2qg.com,🔰国外流量
  - DOMAIN-SUFFIX,xnxx.com,🔰国外流量
  - DOMAIN-SUFFIX,xvideos.com,🔰国外流量
  - DOMAIN-SUFFIX,yahoo.com,🔰国外流量
  - DOMAIN-SUFFIX,yandex.ru,🔰国外流量
  - DOMAIN-SUFFIX,ycombinator.com,🔰国外流量
  - DOMAIN-SUFFIX,yesasia.com,🔰国外流量
  - DOMAIN-SUFFIX,yes-news.com,🔰国外流量
  - DOMAIN-SUFFIX,yomiuri.co.jp,🔰国外流量
  - DOMAIN-SUFFIX,you-get.org,🔰国外流量
  - DOMAIN-SUFFIX,zaobao.com,🔰国外流量
  - DOMAIN-SUFFIX,zb.com,🔰国外流量
  - DOMAIN-SUFFIX,zello.com,🔰国外流量
  - DOMAIN-SUFFIX,zeronet.io,🔰国外流量
  - DOMAIN-SUFFIX,zoom.us,🔰国外流量
  - DOMAIN-KEYWORD,github,🔰国外流量
  - DOMAIN-KEYWORD,jav,🔰国外流量
  - DOMAIN-KEYWORD,pinterest,🔰国外流量
  - DOMAIN-KEYWORD,porn,🔰国外流量
  - DOMAIN-KEYWORD,wikileaks,🔰国外流量
  - DOMAIN-SUFFIX,apartmentratings.com,🔰国外流量
  - DOMAIN-SUFFIX,apartments.com,🔰国外流量
  - DOMAIN-SUFFIX,bankmobilevibe.com,🔰国外流量
  - DOMAIN-SUFFIX,bing.com,🔰国外流量
  - DOMAIN-SUFFIX,booktopia.com.au,🔰国外流量
  - DOMAIN-SUFFIX,cccat.io,🔰国外流量
  - DOMAIN-SUFFIX,centauro.com.br,🔰国外流量
  - DOMAIN-SUFFIX,clearsurance.com,🔰国外流量
  - DOMAIN-SUFFIX,costco.com,🔰国外流量
  - DOMAIN-SUFFIX,crackle.com,🔰国外流量
  - DOMAIN-SUFFIX,depositphotos.cn,🔰国外流量
  - DOMAIN-SUFFIX,dish.com,🔰国外流量
  - DOMAIN-SUFFIX,dmm.co.jp,🔰国外流量
  - DOMAIN-SUFFIX,dmm.com,🔰国外流量
  - DOMAIN-SUFFIX,dnvod.tv,🔰国外流量
  - DOMAIN-SUFFIX,esurance.com,🔰国外流量
  - DOMAIN-SUFFIX,extmatrix.com,🔰国外流量
  - DOMAIN-SUFFIX,fastpic.ru,🔰国外流量
  - DOMAIN-SUFFIX,flipboard.com,🔰国外流量
  - DOMAIN-SUFFIX,fnac.be,🔰国外流量
  - DOMAIN-SUFFIX,fnac.com,🔰国外流量
  - DOMAIN-SUFFIX,funkyimg.com,🔰国外流量
  - DOMAIN-SUFFIX,fxnetworks.com,🔰国外流量
  - DOMAIN-SUFFIX,gettyimages.com,🔰国外流量
  - DOMAIN-SUFFIX,go.com,🔰国外流量
  - DOMAIN-SUFFIX,here.com,🔰国外流量
  - DOMAIN-SUFFIX,jcpenney.com,🔰国外流量
  - DOMAIN-SUFFIX,jiehua.tv,🔰国外流量
  - DOMAIN-SUFFIX,mailfence.com,🔰国外流量
  - DOMAIN-SUFFIX,nationwide.com,🔰国外流量
  - DOMAIN-SUFFIX,nbc.com,🔰国外流量
  - DOMAIN-SUFFIX,nexon.com,🔰国外流量
  - DOMAIN-SUFFIX,nordstrom.com,🔰国外流量
  - DOMAIN-SUFFIX,nordstromimage.com,🔰国外流量
  - DOMAIN-SUFFIX,nordstromrack.com,🔰国外流量
  - DOMAIN-SUFFIX,superpages.com,🔰国外流量
  - DOMAIN-SUFFIX,target.com,🔰国外流量
  - DOMAIN-SUFFIX,thinkgeek.com,🔰国外流量
  - DOMAIN-SUFFIX,tracfone.com,🔰国外流量
  - DOMAIN-SUFFIX,unity3d.com,🔰国外流量
  - DOMAIN-SUFFIX,uploader.jp,🔰国外流量
  - DOMAIN-SUFFIX,vevo.com,🔰国外流量
  - DOMAIN-SUFFIX,viu.tv,🔰国外流量
  - DOMAIN-SUFFIX,vk.com,🔰国外流量
  - DOMAIN-SUFFIX,vsco.co,🔰国外流量
  - DOMAIN-SUFFIX,xfinity.com,🔰国外流量
  - DOMAIN-SUFFIX,zattoo.com,🔰国外流量
  - DOMAIN,testflight.apple.com,🔰国外流量
  - DOMAIN-SUFFIX,appsto.re,🔰国外流量
  - DOMAIN,books.itunes.apple.com,🔰国外流量
  - DOMAIN,hls.itunes.apple.com,🔰国外流量
  - DOMAIN,apps.apple.com,🔰国外流量
  - DOMAIN,itunes.apple.com,🔰国外流量
  - DOMAIN,api-glb-sea.smoot.apple.com,🔰国外流量
  - DOMAIN,lookup-api.apple.com,🔰国外流量
  - DOMAIN-SUFFIX,abc.xyz,🔰国外流量
  - DOMAIN-SUFFIX,android.com,🔰国外流量
  - DOMAIN-SUFFIX,androidify.com,🔰国外流量
  - DOMAIN-SUFFIX,dialogflow.com,🔰国外流量
  - DOMAIN-SUFFIX,autodraw.com,🔰国外流量
  - DOMAIN-SUFFIX,capitalg.com,🔰国外流量
  - DOMAIN-SUFFIX,certificate-transparency.org,🔰国外流量
  - DOMAIN-SUFFIX,chrome.com,🔰国外流量
  - DOMAIN-SUFFIX,chromeexperiments.com,🔰国外流量
  - DOMAIN-SUFFIX,chromestatus.com,🔰国外流量
  - DOMAIN-SUFFIX,chromium.org,🔰国外流量
  - DOMAIN-SUFFIX,creativelab5.com,🔰国外流量
  - DOMAIN-SUFFIX,debug.com,🔰国外流量
  - DOMAIN-SUFFIX,deepmind.com,🔰国外流量
  - DOMAIN-SUFFIX,firebaseio.com,🔰国外流量
  - DOMAIN-SUFFIX,getmdl.io,🔰国外流量
  - DOMAIN-SUFFIX,ggpht.com,🔰国外流量
  - DOMAIN-SUFFIX,gmail.com,🔰国外流量
  - DOMAIN-SUFFIX,gmodules.com,🔰国外流量
  - DOMAIN-SUFFIX,godoc.org,🔰国外流量
  - DOMAIN-SUFFIX,golang.org,🔰国外流量
  - DOMAIN-SUFFIX,gstatic.com,🔰国外流量
  - DOMAIN-SUFFIX,gv.com,🔰国外流量
  - DOMAIN-SUFFIX,gwtproject.org,🔰国外流量
  - DOMAIN-SUFFIX,itasoftware.com,🔰国外流量
  - DOMAIN-SUFFIX,madewithcode.com,🔰国外流量
  - DOMAIN-SUFFIX,material.io,🔰国外流量
  - DOMAIN-SUFFIX,polymer-project.org,🔰国外流量
  - DOMAIN-SUFFIX,admin.recaptcha.net,🔰国外流量
  - DOMAIN-SUFFIX,recaptcha.net,🔰国外流量
  - DOMAIN-SUFFIX,shattered.io,🔰国外流量
  - DOMAIN-SUFFIX,synergyse.com,🔰国外流量
  - DOMAIN-SUFFIX,tensorflow.org,🔰国外流量
  - DOMAIN-SUFFIX,tfhub.dev,🔰国外流量
  - DOMAIN-SUFFIX,tiltbrush.com,🔰国外流量
  - DOMAIN-SUFFIX,waveprotocol.org,🔰国外流量
  - DOMAIN-SUFFIX,waymo.com,🔰国外流量
  - DOMAIN-SUFFIX,webmproject.org,🔰国外流量
  - DOMAIN-SUFFIX,webrtc.org,🔰国外流量
  - DOMAIN-SUFFIX,whatbrowser.org,🔰国外流量
  - DOMAIN-SUFFIX,widevine.com,🔰国外流量
  - DOMAIN-SUFFIX,x.company,🔰国外流量
  - DOMAIN-SUFFIX,youtu.be,🔰国外流量
  - DOMAIN-SUFFIX,yt.be,🔰国外流量
  - DOMAIN-SUFFIX,ytimg.com,🔰国外流量
  - DOMAIN-SUFFIX,1drv.com,🔰国外流量
  - DOMAIN-SUFFIX,1drv.ms,🔰国外流量
  - DOMAIN-SUFFIX,blob.core.windows.net,🔰国外流量
  - DOMAIN-SUFFIX,livefilestore.com,🔰国外流量
  - DOMAIN-SUFFIX,onedrive.com,🔰国外流量
  - DOMAIN-SUFFIX,storage.live.com,🔰国外流量
  - DOMAIN-SUFFIX,storage.msn.com,🔰国外流量
  - DOMAIN,oneclient.sfx.ms,🔰国外流量
  - DOMAIN-SUFFIX,0rz.tw,🔰国外流量
  - DOMAIN-SUFFIX,4bluestones.biz,🔰国外流量
  - DOMAIN-SUFFIX,9bis.net,🔰国外流量
  - DOMAIN-SUFFIX,allconnected.co,🔰国外流量
  - DOMAIN-SUFFIX,aol.com,🔰国外流量
  - DOMAIN-SUFFIX,bcc.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,bit.ly,🔰国外流量
  - DOMAIN-SUFFIX,bitshare.com,🔰国外流量
  - DOMAIN-SUFFIX,blog.jp,🔰国外流量
  - DOMAIN-SUFFIX,blogimg.jp,🔰国外流量
  - DOMAIN-SUFFIX,blogtd.org,🔰国外流量
  - DOMAIN-SUFFIX,broadcast.co.nz,🔰国外流量
  - DOMAIN-SUFFIX,camfrog.com,🔰国外流量
  - DOMAIN-SUFFIX,cfos.de,🔰国外流量
  - DOMAIN-SUFFIX,citypopulation.de,🔰国外流量
  - DOMAIN-SUFFIX,cloudfront.net,🔰国外流量
  - DOMAIN-SUFFIX,ctitv.com.tw,🔰国外流量
  - DOMAIN-SUFFIX,cuhk.edu.hk,🔰国外流量
  - DOMAIN-SUFFIX,cusu.hk,🔰国外流量
  - DOMAIN-SUFFIX,discord.gg,🔰国外流量
  - DOMAIN-SUFFIX,discuss.com.hk,🔰国外流量
  - DOMAIN-SUFFIX,dropboxapi.com,🔰国外流量
  - DOMAIN-SUFFIX,duolingo.cn,🔰国外流量
  - DOMAIN-SUFFIX,edditstatic.com,🔰国外流量
  - DOMAIN-SUFFIX,flickriver.com,🔰国外流量
  - DOMAIN-SUFFIX,focustaiwan.tw,🔰国外流量
  - DOMAIN-SUFFIX,free.fr,🔰国外流量
  - DOMAIN-SUFFIX,gigacircle.com,🔰国外流量
  - DOMAIN-SUFFIX,hk-pub.com,🔰国外流量
  - DOMAIN-SUFFIX,hosting.co.uk,🔰国外流量
  - DOMAIN-SUFFIX,hwcdn.net,🔰国外流量
  - DOMAIN-SUFFIX,ifixit.com,🔰国外流量
  - DOMAIN-SUFFIX,iphone4hongkong.com,🔰国外流量
  - DOMAIN-SUFFIX,iphonetaiwan.org,🔰国外流量
  - DOMAIN-SUFFIX,iptvbin.com,🔰国外流量
  - DOMAIN-SUFFIX,linksalpha.com,🔰国外流量
  - DOMAIN-SUFFIX,manyvids.com,🔰国外流量
  - DOMAIN-SUFFIX,myactimes.com,🔰国外流量
  - DOMAIN-SUFFIX,newsblur.com,🔰国外流量
  - DOMAIN-SUFFIX,now.im,🔰国外流量
  - DOMAIN-SUFFIX,nowe.com,🔰国外流量
  - DOMAIN-SUFFIX,redditlist.com,🔰国外流量
  - DOMAIN-SUFFIX,s3.amazonaws.com,🔰国外流量
  - DOMAIN-SUFFIX,signal.org,🔰国外流量
  - DOMAIN-SUFFIX,smartmailcloud.com,🔰国外流量
  - DOMAIN-SUFFIX,sparknotes.com,🔰国外流量
  - DOMAIN-SUFFIX,streetvoice.com,🔰国外流量
  - DOMAIN-SUFFIX,supertop.co,🔰国外流量
  - DOMAIN-SUFFIX,tv.com,🔰国外流量
  - DOMAIN-SUFFIX,typepad.com,🔰国外流量
  - DOMAIN-SUFFIX,udnbkk.com,🔰国外流量
  - DOMAIN-SUFFIX,urbanairship.com,🔰国外流量
  - DOMAIN-SUFFIX,whispersystems.org,🔰国外流量
  - DOMAIN-SUFFIX,wikia.com,🔰国外流量
  - DOMAIN-SUFFIX,wn.com,🔰国外流量
  - DOMAIN-SUFFIX,wolframalpha.com,🔰国外流量
  - DOMAIN-SUFFIX,x-art.com,🔰国外流量
  - DOMAIN-SUFFIX,yimg.com,🔰国外流量
  - DOMAIN,api.steampowered.com,🔰国外流量
  - DOMAIN,store.steampowered.com,🔰国外流量

  - DOMAIN-SUFFIX,aaplimg.com,🍎苹果服务
  - DOMAIN-SUFFIX,apple.co,🍎苹果服务
  - DOMAIN-SUFFIX,apple.com,🍎苹果服务
  - DOMAIN-SUFFIX,apple-cloudkit.com,🍎苹果服务
  - DOMAIN-SUFFIX,appstore.com,🍎苹果服务
  - DOMAIN-SUFFIX,cdn-apple.com,🍎苹果服务
  - DOMAIN-SUFFIX,crashlytics.com,🍎苹果服务
  - DOMAIN-SUFFIX,icloud.com,🍎苹果服务
  - DOMAIN-SUFFIX,icloud-content.com,🍎苹果服务
  - DOMAIN-SUFFIX,me.com,🍎苹果服务
  - DOMAIN-SUFFIX,mzstatic.com,🍎苹果服务
  - DOMAIN,www-cdn.icloud.com.akadns.net,🍎苹果服务

  - DOMAIN-SUFFIX,t.me,✈️Telegram
  - DOMAIN-SUFFIX,tdesktop.com,✈️Telegram
  - DOMAIN-SUFFIX,telegra.ph,✈️Telegram
  - DOMAIN-SUFFIX,telegram.me,✈️Telegram
  - DOMAIN-SUFFIX,telegram.org,✈️Telegram
  - IP-CIDR,91.108.4.0/22,✈️Telegram,no-resolve
  - IP-CIDR,91.108.8.0/22,✈️Telegram,no-resolve
  - IP-CIDR,91.108.12.0/22,✈️Telegram,no-resolve
  - IP-CIDR,91.108.16.0/22,✈️Telegram,no-resolve
  - IP-CIDR,91.108.56.0/22,✈️Telegram,no-resolve
  - IP-CIDR,149.154.160.0/20,✈️Telegram,no-resolve
  - IP-CIDR6,2001:b28:f23d::/48,✈️Telegram,no-resolve
  - IP-CIDR6,2001:b28:f23f::/48,✈️Telegram,no-resolve
  - IP-CIDR6,2001:67c:4e8::/48,✈️Telegram,no-resolve

  - DOMAIN-SUFFIX,googlevideo.com,🎬Youtube
  - DOMAIN-SUFFIX,youtube.com,🎬Youtube
  - DOMAIN,youtubei.googleapis.com,🎬Youtube

  - DOMAIN-SUFFIX,netflix.com,🎬Netflix
  - DOMAIN-SUFFIX,netflix.net,🎬Netflix
  - DOMAIN-SUFFIX,nflxext.com,🎬Netflix
  - DOMAIN-SUFFIX,nflximg.com,🎬Netflix
  - DOMAIN-SUFFIX,nflximg.net,🎬Netflix
  - DOMAIN-SUFFIX,nflxso.net,🎬Netflix
  - DOMAIN-SUFFIX,nflxvideo.net,🎬Netflix
  - DOMAIN-SUFFIX,netflixdnstest0.com,🎬Netflix
  - DOMAIN-SUFFIX,netflixdnstest1.com,🎬Netflix
  - DOMAIN-SUFFIX,netflixdnstest2.com,🎬Netflix
  - DOMAIN-SUFFIX,netflixdnstest3.com,🎬Netflix
  - DOMAIN-SUFFIX,netflixdnstest4.com,🎬Netflix
  - DOMAIN-SUFFIX,netflixdnstest5.com,🎬Netflix
  - DOMAIN-SUFFIX,netflixdnstest6.com,🎬Netflix
  - DOMAIN-SUFFIX,netflixdnstest7.com,🎬Netflix
  - DOMAIN-SUFFIX,netflixdnstest8.com,🎬Netflix
  - DOMAIN-SUFFIX,netflixdnstest9.com,🎬Netflix
  - IP-CIDR,23.246.0.0/18,🎬Netflix,no-resolve
  - IP-CIDR,37.77.184.0/21,🎬Netflix,no-resolve
  - IP-CIDR,45.57.0.0/17,🎬Netflix,no-resolve
  - IP-CIDR,64.120.128.0/17,🎬Netflix,no-resolve
  - IP-CIDR,66.197.128.0/17,🎬Netflix,no-resolve
  - IP-CIDR,108.175.32.0/20,🎬Netflix,no-resolve
  - IP-CIDR,192.173.64.0/18,🎬Netflix,no-resolve
  - IP-CIDR,198.38.96.0/19,🎬Netflix,no-resolve
  - IP-CIDR,198.45.48.0/20,🎬Netflix,no-resolve

  - DOMAIN-SUFFIX,deezer.com,🎬国外媒体
  - DOMAIN-SUFFIX,dzcdn.net,🎬国外媒体
  - DOMAIN-SUFFIX,kkbox.com,🎬国外媒体
  - DOMAIN-SUFFIX,kkbox.com.tw,🎬国外媒体
  - DOMAIN-SUFFIX,kfs.io,🎬国外媒体
  - DOMAIN-SUFFIX,joox.com,🎬国外媒体
  - DOMAIN-SUFFIX,pandora.com,🎬国外媒体
  - DOMAIN-SUFFIX,p-cdn.us,🎬国外媒体
  - DOMAIN-SUFFIX,sndcdn.com,🎬国外媒体
  - DOMAIN-SUFFIX,soundcloud.com,🎬国外媒体
  - DOMAIN-SUFFIX,pscdn.co,🎬国外媒体
  - DOMAIN-SUFFIX,scdn.co,🎬国外媒体
  - DOMAIN-SUFFIX,spotify.com,🎬国外媒体
  - DOMAIN-SUFFIX,spoti.fi,🎬国外媒体
  - DOMAIN-KEYWORD,spotify.com,🎬国外媒体
  - DOMAIN-KEYWORD,-spotify-com,🎬国外媒体
  - DOMAIN-SUFFIX,tidal.com,🎬国外媒体
  - DOMAIN-SUFFIX,c4assets.com,🎬国外媒体
  - DOMAIN-SUFFIX,channel4.com,🎬国外媒体
  - DOMAIN-SUFFIX,abema.io,🎬国外媒体
  - DOMAIN-SUFFIX,ameba.jp,🎬国外媒体
  - DOMAIN-SUFFIX,abema.tv,🎬国外媒体
  - DOMAIN-SUFFIX,hayabusa.io,🎬国外媒体
  - DOMAIN,abematv.akamaized.net,🎬国外媒体
  - DOMAIN,ds-linear-abematv.akamaized.net,🎬国外媒体
  - DOMAIN,ds-vod-abematv.akamaized.net,🎬国外媒体
  - DOMAIN,linear-abematv.akamaized.net,🎬国外媒体
  - DOMAIN-SUFFIX,aiv-cdn.net,🎬国外媒体
  - DOMAIN-SUFFIX,aiv-delivery.net,🎬国外媒体
  - DOMAIN-SUFFIX,amazonvideo.com,🎬国外媒体
  - DOMAIN-SUFFIX,primevideo.com,🎬国外媒体
  - DOMAIN,avodmp4s3ww-a.akamaihd.net,🎬国外媒体
  - DOMAIN,d25xi40x97liuc.cloudfront.net,🎬国外媒体
  - DOMAIN,dmqdd6hw24ucf.cloudfront.net,🎬国外媒体
  - DOMAIN,d22qjgkvxw22r6.cloudfront.net,🎬国外媒体
  - DOMAIN,d1v5ir2lpwr8os.cloudfront.net,🎬国外媒体
  - DOMAIN-KEYWORD,avoddashs,🎬国外媒体
  - DOMAIN-SUFFIX,bahamut.com.tw,🎬国外媒体
  - DOMAIN-SUFFIX,gamer.com.tw,🎬国外媒体
  - DOMAIN,gamer-cds.cdn.hinet.net,🎬国外媒体
  - DOMAIN,gamer2-cds.cdn.hinet.net,🎬国外媒体
  - DOMAIN-SUFFIX,bbc.co.uk,🎬国外媒体
  - DOMAIN-SUFFIX,bbci.co.uk,🎬国外媒体
  - DOMAIN-KEYWORD,bbcfmt,🎬国外媒体
  - DOMAIN-KEYWORD,uk-live,🎬国外媒体
  - DOMAIN-SUFFIX,dazn.com,🎬国外媒体
  - DOMAIN-SUFFIX,dazn-api.com,🎬国外媒体
  - DOMAIN,d151l6v8er5bdm.cloudfront.net,🎬国外媒体
  - DOMAIN-KEYWORD,voddazn,🎬国外媒体
  - DOMAIN-SUFFIX,bamgrid.com,🎬国外媒体
  - DOMAIN-SUFFIX,disney-plus.net,🎬国外媒体
  - DOMAIN-SUFFIX,disneyplus.com,🎬国外媒体
  - DOMAIN-SUFFIX,dssott.com,🎬国外媒体
  - DOMAIN,cdn.registerdisney.go.com,🎬国外媒体
  - DOMAIN-SUFFIX,encoretvb.com,🎬国外媒体
  - DOMAIN,edge.api.brightcove.com,🎬国外媒体
  - DOMAIN,bcbolt446c5271-a.akamaihd.net,🎬国外媒体
  - DOMAIN-SUFFIX,fox.com,🎬国外媒体
  - DOMAIN-SUFFIX,foxdcg.com,🎬国外媒体
  - DOMAIN-SUFFIX,theplatform.com,🎬国外媒体
  - DOMAIN-SUFFIX,uplynk.com,🎬国外媒体
  - DOMAIN-SUFFIX,hbo.com,🎬国外媒体
  - DOMAIN-SUFFIX,hbogo.com,🎬国外媒体
  - DOMAIN-SUFFIX,hbonow.com,🎬国外媒体
  - DOMAIN-SUFFIX,hbogoasia.com,🎬国外媒体
  - DOMAIN-SUFFIX,hbogoasia.hk,🎬国外媒体
  - DOMAIN,bcbolthboa-a.akamaihd.net,🎬国外媒体
  - DOMAIN,players.brightcove.net,🎬国外媒体
  - DOMAIN,s3-ap-southeast-1.amazonaws.com,🎬国外媒体
  - DOMAIN,dai3fd1oh325y.cloudfront.net,🎬国外媒体
  - DOMAIN,44wilhpljf.execute-api.ap-southeast-1.amazonaws.com,🎬国外媒体
  - DOMAIN,hboasia1-i.akamaihd.net,🎬国外媒体
  - DOMAIN,hboasia2-i.akamaihd.net,🎬国外媒体
  - DOMAIN,hboasia3-i.akamaihd.net,🎬国外媒体
  - DOMAIN,hboasia4-i.akamaihd.net,🎬国外媒体
  - DOMAIN,hboasia5-i.akamaihd.net,🎬国外媒体
  - DOMAIN,cf-images.ap-southeast-1.prod.boltdns.net,🎬国外媒体
  - DOMAIN-SUFFIX,5itv.tv,🎬国外媒体
  - DOMAIN-SUFFIX,ocnttv.com,🎬国外媒体
  - DOMAIN-SUFFIX,hulu.com,🎬国外媒体
  - DOMAIN-SUFFIX,huluim.com,🎬国外媒体
  - DOMAIN-SUFFIX,hulustream.com,🎬国外媒体
  - DOMAIN-SUFFIX,happyon.jp,🎬国外媒体
  - DOMAIN-SUFFIX,hulu.jp,🎬国外媒体
  - DOMAIN-SUFFIX,itv.com,🎬国外媒体
  - DOMAIN-SUFFIX,itvstatic.com,🎬国外媒体
  - DOMAIN,itvpnpmobile-a.akamaihd.net,🎬国外媒体
  - DOMAIN-SUFFIX,kktv.com.tw,🎬国外媒体
  - DOMAIN-SUFFIX,kktv.me,🎬国外媒体
  - DOMAIN,kktv-theater.kk.stream,🎬国外媒体
  - DOMAIN-SUFFIX,linetv.tw,🎬国外媒体
  - DOMAIN,d3c7rimkq79yfu.cloudfront.net,🎬国外媒体
  - DOMAIN-SUFFIX,litv.tv,🎬国外媒体
  - DOMAIN,litvfreemobile-hichannel.cdn.hinet.net,🎬国外媒体
  - DOMAIN-SUFFIX,channel5.com,🎬国外媒体
  - DOMAIN-SUFFIX,my5.tv,🎬国外媒体
  - DOMAIN,d349g9zuie06uo.cloudfront.net,🎬国外媒体
  - DOMAIN-SUFFIX,mytvsuper.com,🎬国外媒体
  - DOMAIN-SUFFIX,tvb.com,🎬国外媒体
  - DOMAIN-SUFFIX,netflix.com,🎬国外媒体
  - DOMAIN-SUFFIX,netflix.net,🎬国外媒体
  - DOMAIN-SUFFIX,nflxext.com,🎬国外媒体
  - DOMAIN-SUFFIX,nflximg.com,🎬国外媒体
  - DOMAIN-SUFFIX,nflximg.net,🎬国外媒体
  - DOMAIN-SUFFIX,nflxso.net,🎬国外媒体
  - DOMAIN-SUFFIX,nflxvideo.net,🎬国外媒体
  - DOMAIN-SUFFIX,netflixdnstest0.com,🎬国外媒体
  - DOMAIN-SUFFIX,netflixdnstest1.com,🎬国外媒体
  - DOMAIN-SUFFIX,netflixdnstest2.com,🎬国外媒体
  - DOMAIN-SUFFIX,netflixdnstest3.com,🎬国外媒体
  - DOMAIN-SUFFIX,netflixdnstest4.com,🎬国外媒体
  - DOMAIN-SUFFIX,netflixdnstest5.com,🎬国外媒体
  - DOMAIN-SUFFIX,netflixdnstest6.com,🎬国外媒体
  - DOMAIN-SUFFIX,netflixdnstest7.com,🎬国外媒体
  - DOMAIN-SUFFIX,netflixdnstest8.com,🎬国外媒体
  - DOMAIN-SUFFIX,netflixdnstest9.com,🎬国外媒体
  - IP-CIDR,23.246.0.0/18,🎬国外媒体,no-resolve
  - IP-CIDR,37.77.184.0/21,🎬国外媒体,no-resolve
  - IP-CIDR,45.57.0.0/17,🎬国外媒体,no-resolve
  - IP-CIDR,64.120.128.0/17,🎬国外媒体,no-resolve
  - IP-CIDR,66.197.128.0/17,🎬国外媒体,no-resolve
  - IP-CIDR,108.175.32.0/20,🎬国外媒体,no-resolve
  - IP-CIDR,192.173.64.0/18,🎬国外媒体,no-resolve
  - IP-CIDR,198.38.96.0/19,🎬国外媒体,no-resolve
  - IP-CIDR,198.45.48.0/20,🎬国外媒体,no-resolve
  - DOMAIN-SUFFIX,dmc.nico,🎬国外媒体
  - DOMAIN-SUFFIX,nicovideo.jp,🎬国外媒体
  - DOMAIN-SUFFIX,nimg.jp,🎬国外媒体
  - DOMAIN-SUFFIX,socdm.com,🎬国外媒体
  - DOMAIN-SUFFIX,pbs.org,🎬国外媒体
  - DOMAIN-SUFFIX,phncdn.com,🎬国外媒体
  - DOMAIN-SUFFIX,pornhub.com,🎬国外媒体
  - DOMAIN-SUFFIX,pornhubpremium.com,🎬国外媒体
  - DOMAIN-SUFFIX,skyking.com.tw,🎬国外媒体
  - DOMAIN,hamifans.emome.net,🎬国外媒体
  - DOMAIN-SUFFIX,twitch.tv,🎬国外媒体
  - DOMAIN-SUFFIX,twitchcdn.net,🎬国外媒体
  - DOMAIN-SUFFIX,ttvnw.net,🎬国外媒体
  - DOMAIN-SUFFIX,jtvnw.net,🎬国外媒体
  - DOMAIN-SUFFIX,viu.com,🎬国外媒体
  - DOMAIN-SUFFIX,viu.tv,🎬国外媒体
  - DOMAIN,api.viu.now.com,🎬国外媒体
  - DOMAIN,d1k2us671qcoau.cloudfront.net,🎬国外媒体
  - DOMAIN,d2anahhhmp1ffz.cloudfront.net,🎬国外媒体
  - DOMAIN,dfp6rglgjqszk.cloudfront.net,🎬国外媒体
  - DOMAIN-SUFFIX,googlevideo.com,🎬国外媒体
  - DOMAIN-SUFFIX,youtube.com,🎬国外媒体
  - DOMAIN,youtubei.googleapis.com,🎬国外媒体
  - DOMAIN-SUFFIX,biliapi.com,🎬哔哩哔哩
  - DOMAIN-SUFFIX,biliapi.net,🎬哔哩哔哩
  - DOMAIN-SUFFIX,bilibili.com,🎬哔哩哔哩
  - DOMAIN-SUFFIX,bilibili.tv,🎬哔哩哔哩
  - DOMAIN-SUFFIX,bilivideo.com,🎬哔哩哔哩

  - DOMAIN-SUFFIX,local,DIRECT
  - IP-CIDR,192.168.0.0/16,DIRECT,no-resolve
  - IP-CIDR,10.0.0.0/8,DIRECT,no-resolve
  - IP-CIDR,172.16.0.0/12,DIRECT,no-resolve
  - IP-CIDR,127.0.0.0/8,DIRECT,no-resolve
  - IP-CIDR,100.64.0.0/10,DIRECT,no-resolve
  - IP-CIDR6,::1/128,DIRECT,no-resolve
  - IP-CIDR6,fc00::/7,DIRECT,no-resolve
  - IP-CIDR6,fe80::/10,DIRECT,no-resolve
  - IP-CIDR6,fd00::/8,DIRECT,no-resolve
  - DOMAIN,app.adjust.com,DIRECT
  - DOMAIN-SUFFIX,googletraveladservices.com,DIRECT
  - DOMAIN,dl.google.com,DIRECT
  - DOMAIN,mtalk.google.com,DIRECT
  - DOMAIN,livew.l.qq.com,DIRECT
  - DOMAIN,vd.l.qq.com,DIRECT
  - DOMAIN,analytics.strava.com,DIRECT
  - DOMAIN,msg.umeng.com,DIRECT
  - DOMAIN,msg.umengcloud.com,DIRECT
  - DOMAIN-SUFFIX,qhres.com,DIRECT
  - DOMAIN-SUFFIX,qhimg.com,DIRECT
  - DOMAIN-SUFFIX,akadns.net,DIRECT
  - DOMAIN-SUFFIX,alibaba.com,DIRECT
  - DOMAIN-SUFFIX,alicdn.com,DIRECT
  - DOMAIN-SUFFIX,alikunlun.com,DIRECT
  - DOMAIN-SUFFIX,alipay.com,DIRECT
  - DOMAIN-SUFFIX,amap.com,DIRECT
  - DOMAIN-SUFFIX,autonavi.com,DIRECT
  - DOMAIN-SUFFIX,dingtalk.com,DIRECT
  - DOMAIN-SUFFIX,mxhichina.com,DIRECT
  - DOMAIN-SUFFIX,soku.com,DIRECT
  - DOMAIN-SUFFIX,taobao.com,DIRECT
  - DOMAIN-SUFFIX,tmall.com,DIRECT
  - DOMAIN-SUFFIX,tmall.hk,DIRECT
  - DOMAIN-SUFFIX,ykimg.com,DIRECT
  - DOMAIN-SUFFIX,youku.com,DIRECT
  - DOMAIN-SUFFIX,xiami.com,DIRECT
  - DOMAIN-SUFFIX,xiami.net,DIRECT
  - DOMAIN-SUFFIX,aaplimg.com,DIRECT
  - DOMAIN-SUFFIX,apple.co,DIRECT
  - DOMAIN-SUFFIX,apple.com,DIRECT
  - DOMAIN-SUFFIX,apple-cloudkit.com,DIRECT
  - DOMAIN-SUFFIX,appstore.com,DIRECT
  - DOMAIN-SUFFIX,cdn-apple.com,DIRECT
  - DOMAIN-SUFFIX,crashlytics.com,DIRECT
  - DOMAIN-SUFFIX,icloud.com,DIRECT
  - DOMAIN-SUFFIX,icloud-content.com,DIRECT
  - DOMAIN-SUFFIX,me.com,DIRECT
  - DOMAIN-SUFFIX,mzstatic.com,DIRECT
  - DOMAIN,www-cdn.icloud.com.akadns.net,DIRECT
  - DOMAIN-SUFFIX,baidu.com,DIRECT
  - DOMAIN-SUFFIX,baidubcr.com,DIRECT
  - DOMAIN-SUFFIX,bdstatic.com,DIRECT
  - DOMAIN-SUFFIX,yunjiasu-cdn.net,DIRECT
  - DOMAIN-SUFFIX,acgvideo.com,DIRECT
  - DOMAIN-SUFFIX,hdslb.com,DIRECT
  - DOMAIN-SUFFIX,blizzard.com,DIRECT
  - DOMAIN-SUFFIX,battle.net,DIRECT
  - DOMAIN,blzddist1-a.akamaihd.net,DIRECT
  - DOMAIN-SUFFIX,feiliao.com,DIRECT
  - DOMAIN-SUFFIX,pstatp.com,DIRECT
  - DOMAIN-SUFFIX,snssdk.com,DIRECT
  - DOMAIN-SUFFIX,iesdouyin.com,DIRECT
  - DOMAIN-SUFFIX,toutiao.com,DIRECT
  - DOMAIN-SUFFIX,cctv.com,DIRECT
  - DOMAIN-SUFFIX,cctvpic.com,DIRECT
  - DOMAIN-SUFFIX,livechina.com,DIRECT
  - DOMAIN-SUFFIX,didialift.com,DIRECT
  - DOMAIN-SUFFIX,didiglobal.com,DIRECT
  - DOMAIN-SUFFIX,udache.com,DIRECT
  - DOMAIN-SUFFIX,343480.com,DIRECT
  - DOMAIN-SUFFIX,baduziyuan.com,DIRECT
  - DOMAIN-SUFFIX,com-hs-hkdy.com,DIRECT
  - DOMAIN-SUFFIX,czybjz.com,DIRECT
  - DOMAIN-SUFFIX,dandanzan.com,DIRECT
  - DOMAIN-SUFFIX,fjhps.com,DIRECT
  - DOMAIN-SUFFIX,kuyunbo.club,DIRECT
  - DOMAIN-SUFFIX,21cn.com,DIRECT
  - DOMAIN-SUFFIX,hitv.com,DIRECT
  - DOMAIN-SUFFIX,mgtv.com,DIRECT
  - DOMAIN-SUFFIX,iqiyi.com,DIRECT
  - DOMAIN-SUFFIX,iqiyipic.com,DIRECT
  - DOMAIN-SUFFIX,71.am.com,DIRECT
  - DOMAIN-SUFFIX,jd.com,DIRECT
  - DOMAIN-SUFFIX,jd.hk,DIRECT
  - DOMAIN-SUFFIX,jdpay.com,DIRECT
  - DOMAIN-SUFFIX,360buyimg.com,DIRECT
  - DOMAIN-SUFFIX,iciba.com,DIRECT
  - DOMAIN-SUFFIX,ksosoft.com,DIRECT
  - DOMAIN-SUFFIX,meitu.com,DIRECT
  - DOMAIN-SUFFIX,meitudata.com,DIRECT
  - DOMAIN-SUFFIX,meitustat.com,DIRECT
  - DOMAIN-SUFFIX,meipai.com,DIRECT
  - DOMAIN-SUFFIX,duokan.com,DIRECT
  - DOMAIN-SUFFIX,mi-img.com,DIRECT
  - DOMAIN-SUFFIX,miui.com,DIRECT
  - DOMAIN-SUFFIX,miwifi.com,DIRECT
  - DOMAIN-SUFFIX,xiaomi.com,DIRECT
  - DOMAIN-SUFFIX,microsoft.com,DIRECT
  - DOMAIN-SUFFIX,msecnd.net,DIRECT
  - DOMAIN-SUFFIX,office365.com,DIRECT
  - DOMAIN-SUFFIX,outlook.com,DIRECT
  - DOMAIN-SUFFIX,s-microsoft.com,DIRECT
  - DOMAIN-SUFFIX,visualstudio.com,DIRECT
  - DOMAIN-SUFFIX,windows.com,DIRECT
  - DOMAIN-SUFFIX,windowsupdate.com,DIRECT
  - DOMAIN,officecdn-microsoft-com.akamaized.net,DIRECT
  - DOMAIN-SUFFIX,163.com,DIRECT
  - DOMAIN-SUFFIX,126.net,DIRECT
  - DOMAIN-SUFFIX,127.net,DIRECT
  - DOMAIN-SUFFIX,163yun.com,DIRECT
  - DOMAIN-SUFFIX,lofter.com,DIRECT
  - DOMAIN-SUFFIX,netease.com,DIRECT
  - DOMAIN-SUFFIX,ydstatic.com,DIRECT
  - DOMAIN-SUFFIX,sina.com,DIRECT
  - DOMAIN-SUFFIX,weibo.com,DIRECT
  - DOMAIN-SUFFIX,weibocdn.com,DIRECT
  - DOMAIN-SUFFIX,sohu.com,DIRECT
  - DOMAIN-SUFFIX,sohucs.com,DIRECT
  - DOMAIN-SUFFIX,sohu-inc.com,DIRECT
  - DOMAIN-SUFFIX,v-56.com,DIRECT
  - DOMAIN-SUFFIX,sogo.com,DIRECT
  - DOMAIN-SUFFIX,sogou.com,DIRECT
  - DOMAIN-SUFFIX,sogoucdn.com,DIRECT
  - DOMAIN-SUFFIX,steampowered.com,DIRECT
  - DOMAIN-SUFFIX,steam-chat.com,DIRECT
  - DOMAIN-SUFFIX,steamgames.com,DIRECT
  - DOMAIN-SUFFIX,steamusercontent.com,DIRECT
  - DOMAIN-SUFFIX,steamcontent.com,DIRECT
  - DOMAIN-SUFFIX,steamstatic.com,DIRECT
  - DOMAIN-SUFFIX,steamcdn-a.akamaihd.net,DIRECT
  - DOMAIN-SUFFIX,steamstat.us,DIRECT
  - DOMAIN-SUFFIX,gtimg.com,DIRECT
  - DOMAIN-SUFFIX,idqqimg.com,DIRECT
  - DOMAIN-SUFFIX,igamecj.com,DIRECT
  - DOMAIN-SUFFIX,myapp.com,DIRECT
  - DOMAIN-SUFFIX,myqcloud.com,DIRECT
  - DOMAIN-SUFFIX,qq.com,DIRECT
  - DOMAIN-SUFFIX,tencent.com,DIRECT
  - DOMAIN-SUFFIX,tencent-cloud.net,DIRECT
  - DOMAIN-SUFFIX,jstucdn.com,DIRECT
  - DOMAIN-SUFFIX,zimuzu.io,DIRECT
  - DOMAIN-SUFFIX,zimuzu.tv,DIRECT
  - DOMAIN-SUFFIX,zmz2019.com,DIRECT
  - DOMAIN-SUFFIX,zmzapi.com,DIRECT
  - DOMAIN-SUFFIX,zmzapi.net,DIRECT
  - DOMAIN-SUFFIX,zmzfile.com,DIRECT
  - DOMAIN-SUFFIX,ccgslb.com,DIRECT
  - DOMAIN-SUFFIX,ccgslb.net,DIRECT
  - DOMAIN-SUFFIX,chinanetcenter.com,DIRECT
  - DOMAIN-SUFFIX,meixincdn.com,DIRECT
  - DOMAIN-SUFFIX,ourdvs.com,DIRECT
  - DOMAIN-SUFFIX,staticdn.net,DIRECT
  - DOMAIN-SUFFIX,wangsu.com,DIRECT
  - DOMAIN-SUFFIX,ipip.net,DIRECT
  - DOMAIN-SUFFIX,ip.la,DIRECT
  - DOMAIN-SUFFIX,ip-cdn.com,DIRECT
  - DOMAIN-SUFFIX,ipv6-test.com,DIRECT
  - DOMAIN-SUFFIX,test-ipv6.com,DIRECT
  - DOMAIN-SUFFIX,whatismyip.com,DIRECT
  - DOMAIN-SUFFIX,netspeedtestmaster.com,DIRECT
  - DOMAIN,speedtest.macpaw.com,DIRECT
  - DOMAIN-SUFFIX,awesome-hd.me,DIRECT
  - DOMAIN-SUFFIX,broadcasthe.net,DIRECT
  - DOMAIN-SUFFIX,chdbits.co,DIRECT
  - DOMAIN-SUFFIX,classix-unlimited.co.uk,DIRECT
  - DOMAIN-SUFFIX,empornium.me,DIRECT
  - DOMAIN-SUFFIX,gazellegames.net,DIRECT
  - DOMAIN-SUFFIX,hdchina.org,DIRECT
  - DOMAIN-SUFFIX,hdsky.me,DIRECT
  - DOMAIN-SUFFIX,icetorrent.org,DIRECT
  - DOMAIN-SUFFIX,jpopsuki.eu,DIRECT
  - DOMAIN-SUFFIX,keepfrds.com,DIRECT
  - DOMAIN-SUFFIX,madsrevolution.net,DIRECT
  - DOMAIN-SUFFIX,m-team.cc,DIRECT
  - DOMAIN-SUFFIX,nanyangpt.com,DIRECT
  - DOMAIN-SUFFIX,ncore.cc,DIRECT
  - DOMAIN-SUFFIX,open.cd,DIRECT
  - DOMAIN-SUFFIX,ourbits.club,DIRECT
  - DOMAIN-SUFFIX,passthepopcorn.me,DIRECT
  - DOMAIN-SUFFIX,privatehd.to,DIRECT
  - DOMAIN-SUFFIX,redacted.ch,DIRECT
  - DOMAIN-SUFFIX,springsunday.net,DIRECT
  - DOMAIN-SUFFIX,tjupt.org,DIRECT
  - DOMAIN-SUFFIX,totheglory.im,DIRECT
  - DOMAIN-SUFFIX,acm.org,DIRECT
  - DOMAIN-SUFFIX,acs.org,DIRECT
  - DOMAIN-SUFFIX,aip.org,DIRECT
  - DOMAIN-SUFFIX,ams.org,DIRECT
  - DOMAIN-SUFFIX,annualreviews.org,DIRECT
  - DOMAIN-SUFFIX,aps.org,DIRECT
  - DOMAIN-SUFFIX,ascelibrary.org,DIRECT
  - DOMAIN-SUFFIX,asm.org,DIRECT
  - DOMAIN-SUFFIX,asme.org,DIRECT
  - DOMAIN-SUFFIX,astm.org,DIRECT
  - DOMAIN-SUFFIX,bmj.com,DIRECT
  - DOMAIN-SUFFIX,cambridge.org,DIRECT
  - DOMAIN-SUFFIX,cas.org,DIRECT
  - DOMAIN-SUFFIX,clarivate.com,DIRECT
  - DOMAIN-SUFFIX,ebscohost.com,DIRECT
  - DOMAIN-SUFFIX,emerald.com,DIRECT
  - DOMAIN-SUFFIX,engineeringvillage.com,DIRECT
  - DOMAIN-SUFFIX,icevirtuallibrary.com,DIRECT
  - DOMAIN-SUFFIX,ieee.org,DIRECT
  - DOMAIN-SUFFIX,imf.org,DIRECT
  - DOMAIN-SUFFIX,iop.org,DIRECT
  - DOMAIN-SUFFIX,jamanetwork.com,DIRECT
  - DOMAIN-SUFFIX,jhu.edu,DIRECT
  - DOMAIN-SUFFIX,jstor.org,DIRECT
  - DOMAIN-SUFFIX,karger.com,DIRECT
  - DOMAIN-SUFFIX,libguides.com,DIRECT
  - DOMAIN-SUFFIX,madsrevolution.net,DIRECT
  - DOMAIN-SUFFIX,mpg.de,DIRECT
  - DOMAIN-SUFFIX,myilibrary.com,DIRECT
  - DOMAIN-SUFFIX,nature.com,DIRECT
  - DOMAIN-SUFFIX,oecd-ilibrary.org,DIRECT
  - DOMAIN-SUFFIX,osapublishing.org,DIRECT
  - DOMAIN-SUFFIX,oup.com,DIRECT
  - DOMAIN-SUFFIX,ovid.com,DIRECT
  - DOMAIN-SUFFIX,oxfordartonline.com,DIRECT
  - DOMAIN-SUFFIX,oxfordbibliographies.com,DIRECT
  - DOMAIN-SUFFIX,oxfordmusiconline.com,DIRECT
  - DOMAIN-SUFFIX,pnas.org,DIRECT
  - DOMAIN-SUFFIX,proquest.com,DIRECT
  - DOMAIN-SUFFIX,rsc.org,DIRECT
  - DOMAIN-SUFFIX,sagepub.com,DIRECT
  - DOMAIN-SUFFIX,sciencedirect.com,DIRECT
  - DOMAIN-SUFFIX,sciencemag.org,DIRECT
  - DOMAIN-SUFFIX,scopus.com,DIRECT
  - DOMAIN-SUFFIX,siam.org,DIRECT
  - DOMAIN-SUFFIX,spiedigitallibrary.org,DIRECT
  - DOMAIN-SUFFIX,springer.com,DIRECT
  - DOMAIN-SUFFIX,springerlink.com,DIRECT
  - DOMAIN-SUFFIX,tandfonline.com,DIRECT
  - DOMAIN-SUFFIX,un.org,DIRECT
  - DOMAIN-SUFFIX,uni-bielefeld.de,DIRECT
  - DOMAIN-SUFFIX,webofknowledge.com,DIRECT
  - DOMAIN-SUFFIX,westlaw.com,DIRECT
  - DOMAIN-SUFFIX,wiley.com,DIRECT
  - DOMAIN-SUFFIX,worldbank.org,DIRECT
  - DOMAIN-SUFFIX,worldscientific.com,DIRECT
  - DOMAIN-SUFFIX,cn,DIRECT
  - DOMAIN-SUFFIX,360in.com,DIRECT
  - DOMAIN-SUFFIX,51ym.me,DIRECT
  - DOMAIN-SUFFIX,8686c.com,DIRECT
  - DOMAIN-SUFFIX,abchina.com,DIRECT
  - DOMAIN-SUFFIX,accuweather.com,DIRECT
  - DOMAIN-SUFFIX,aicoinstorge.com,DIRECT
  - DOMAIN-SUFFIX,air-matters.com,DIRECT
  - DOMAIN-SUFFIX,air-matters.io,DIRECT
  - DOMAIN-SUFFIX,aixifan.com,DIRECT
  - DOMAIN-SUFFIX,amd.com,DIRECT
  - DOMAIN-SUFFIX,b612.net,DIRECT
  - DOMAIN-SUFFIX,bdatu.com,DIRECT
  - DOMAIN-SUFFIX,beitaichufang.com,DIRECT
  - DOMAIN-SUFFIX,bjango.com,DIRECT
  - DOMAIN-SUFFIX,booking.com,DIRECT
  - DOMAIN-SUFFIX,bstatic.com,DIRECT
  - DOMAIN-SUFFIX,cailianpress.com,DIRECT
  - DOMAIN-SUFFIX,camera360.com,DIRECT
  - DOMAIN-SUFFIX,chinaso.com,DIRECT
  - DOMAIN-SUFFIX,chua.pro,DIRECT
  - DOMAIN-SUFFIX,chuimg.com,DIRECT
  - DOMAIN-SUFFIX,chunyu.mobi,DIRECT
  - DOMAIN-SUFFIX,chushou.tv,DIRECT
  - DOMAIN-SUFFIX,cmbchina.com,DIRECT
  - DOMAIN-SUFFIX,cmbimg.com,DIRECT
  - DOMAIN-SUFFIX,ctrip.com,DIRECT
  - DOMAIN-SUFFIX,dfcfw.com,DIRECT
  - DOMAIN-SUFFIX,docschina.org,DIRECT
  - DOMAIN-SUFFIX,douban.com,DIRECT
  - DOMAIN-SUFFIX,doubanio.com,DIRECT
  - DOMAIN-SUFFIX,douyu.com,DIRECT
  - DOMAIN-SUFFIX,dxycdn.com,DIRECT
  - DOMAIN-SUFFIX,dytt8.net,DIRECT
  - DOMAIN-SUFFIX,eastmoney.com,DIRECT
  - DOMAIN-SUFFIX,eudic.net,DIRECT
  - DOMAIN-SUFFIX,feng.com,DIRECT
  - DOMAIN-SUFFIX,fengkongcloud.com,DIRECT
  - DOMAIN-SUFFIX,frdic.com,DIRECT
  - DOMAIN-SUFFIX,futu5.com,DIRECT
  - DOMAIN-SUFFIX,futunn.com,DIRECT
  - DOMAIN-SUFFIX,gandi.net,DIRECT
  - DOMAIN-SUFFIX,geilicdn.com,DIRECT
  - DOMAIN-SUFFIX,getpricetag.com,DIRECT
  - DOMAIN-SUFFIX,gifshow.com,DIRECT
  - DOMAIN-SUFFIX,godic.net,DIRECT
  - DOMAIN-SUFFIX,hicloud.com,DIRECT
  - DOMAIN-SUFFIX,hongxiu.com,DIRECT
  - DOMAIN-SUFFIX,hostbuf.com,DIRECT
  - DOMAIN-SUFFIX,huxiucdn.com,DIRECT
  - DOMAIN-SUFFIX,huya.com,DIRECT
  - DOMAIN-SUFFIX,infinitynewtab.com,DIRECT
  - DOMAIN-SUFFIX,ithome.com,DIRECT
  - DOMAIN-SUFFIX,java.com,DIRECT
  - DOMAIN-SUFFIX,jidian.im,DIRECT
  - DOMAIN-SUFFIX,kaiyanapp.com,DIRECT
  - DOMAIN-SUFFIX,kaspersky-labs.com,DIRECT
  - DOMAIN-SUFFIX,keepcdn.com,DIRECT
  - DOMAIN-SUFFIX,kkmh.com,DIRECT
  - DOMAIN-SUFFIX,licdn.com,DIRECT
  - DOMAIN-SUFFIX,linkedin.com,DIRECT
  - DOMAIN-SUFFIX,loli.net,DIRECT
  - DOMAIN-SUFFIX,luojilab.com,DIRECT
  - DOMAIN-SUFFIX,maoyan.com,DIRECT
  - DOMAIN-SUFFIX,maoyun.tv,DIRECT
  - DOMAIN-SUFFIX,meituan.com,DIRECT
  - DOMAIN-SUFFIX,meituan.net,DIRECT
  - DOMAIN-SUFFIX,mobike.com,DIRECT
  - DOMAIN-SUFFIX,moke.com,DIRECT
  - DOMAIN-SUFFIX,mubu.com,DIRECT
  - DOMAIN-SUFFIX,myzaker.com,DIRECT
  - DOMAIN-SUFFIX,nim-lang-cn.org,DIRECT
  - DOMAIN-SUFFIX,nvidia.com,DIRECT
  - DOMAIN-SUFFIX,oracle.com,DIRECT
  - DOMAIN-SUFFIX,paypal.com,DIRECT
  - DOMAIN-SUFFIX,paypalobjects.com,DIRECT
  - DOMAIN-SUFFIX,qdaily.com,DIRECT
  - DOMAIN-SUFFIX,qidian.com,DIRECT
  - DOMAIN-SUFFIX,qyer.com,DIRECT
  - DOMAIN-SUFFIX,qyerstatic.com,DIRECT
  - DOMAIN-SUFFIX,raychase.net,DIRECT
  - DOMAIN-SUFFIX,ronghub.com,DIRECT
  - DOMAIN-SUFFIX,ruguoapp.com,DIRECT
  - DOMAIN-SUFFIX,s-reader.com,DIRECT
  - DOMAIN-SUFFIX,sankuai.com,DIRECT
  - DOMAIN-SUFFIX,scomper.me,DIRECT
  - DOMAIN-SUFFIX,seafile.com,DIRECT
  - DOMAIN-SUFFIX,sm.ms,DIRECT
  - DOMAIN-SUFFIX,smzdm.com,DIRECT
  - DOMAIN-SUFFIX,snapdrop.net,DIRECT
  - DOMAIN-SUFFIX,snwx.com,DIRECT
  - DOMAIN-SUFFIX,sspai.com,DIRECT
  - DOMAIN-SUFFIX,takungpao.com,DIRECT
  - DOMAIN-SUFFIX,teamviewer.com,DIRECT
  - DOMAIN-SUFFIX,tianyancha.com,DIRECT
  - DOMAIN-SUFFIX,udacity.com,DIRECT
  - DOMAIN-SUFFIX,uning.com,DIRECT
  - DOMAIN-SUFFIX,vmware.com,DIRECT
  - DOMAIN-SUFFIX,weather.com,DIRECT
  - DOMAIN-SUFFIX,weico.cc,DIRECT
  - DOMAIN-SUFFIX,weidian.com,DIRECT
  - DOMAIN-SUFFIX,xiachufang.com,DIRECT
  - DOMAIN-SUFFIX,ximalaya.com,DIRECT
  - DOMAIN-SUFFIX,xinhuanet.com,DIRECT
  - DOMAIN-SUFFIX,xmcdn.com,DIRECT
  - DOMAIN-SUFFIX,yangkeduo.com,DIRECT
  - DOMAIN-SUFFIX,zhangzishi.cc,DIRECT
  - DOMAIN-SUFFIX,zhihu.com,DIRECT
  - DOMAIN-SUFFIX,zhimg.com,DIRECT
  - DOMAIN-SUFFIX,zhuihd.com,DIRECT
  - DOMAIN,download.jetbrains.com,DIRECT
  - DOMAIN,images-cn.ssl-images-amazon.com,DIRECT
  - IP-CIDR,119.28.28.28/32,DIRECT,no-resolve
  - GEOIP,CN,DIRECT

  - MATCH,⚓️其他流量
