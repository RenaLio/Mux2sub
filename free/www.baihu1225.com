<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error 50X</title>
    <link rel="stylesheet" href="https://www.funcdn.com/funres/css/common.css">
</head>

<body class="">
    <div class="container">
        <div class="top">
            <div class="sm-title">Error 50X</div>
            <div class="sub-title">
                <span>CDN.FUN 节点之间无法建立源连接...</span>
                <div class="btn" onclick="window.location.reload()">刷新</div>
            </div>
            <div class="title">Error 50X</div>
            <div class="description">因暂时超载或临时维护，您的 Web 服务器目前无法处理 HTTP 请求。其含义是，这是一个暂时情况，会有一些延误，过后将会得到缓解。</div>
            <div class="solution">如果您是管理者，请详见 <a href="https://www.funcdn.com/doc/#/faq?id=50x" target="_blank"> 怎样解决这个问题？</a></div>
            <div class="info">13.91.160.240&nbsp;&nbsp;&nbsp;&nbsp;edge-61&nbsp;&nbsp;&nbsp;&nbsp;2022-12-27T22:28:14+00:00</div>
        </div>
    </div>
    <div class="bottom">
        <div class="instruction">
            <div class="icon-client"></div>
            <div class="icon-connect-ok"></div>
            <div class="icon-funcdn"></div>
            <div class="icon-connect-fail"></div>
            <div class="icon-server">
                <div class="icon-warn"></div>
            </div>

        </div>
        <div class="footer-info">CDN.FUN node can not establish a connection between the source.</div>
    </div>
</body>

</html>