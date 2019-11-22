<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Kakao Talk Channel Chat Button Demo - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>


<div id="kakao-talk-channel-chat-button"></div>


<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('a876d408c7cc2ab22428d910b1de57af');
    // 카카오톡 채널 1:1채팅 버튼을 생성합니다.
    Kakao.Channel.createChatButton({
      container: '#kakao-talk-channel-chat-button',
      channelPublicId: '_xcLqmC' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다.
    });
  //]]>
</script>

</body>
</html>