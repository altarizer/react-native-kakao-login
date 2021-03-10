
[react-native-kakao-login](https://github.com/trabricks-react/react-native-kakao-login) 에서 Fork 후 변경된 프로젝트. 

`이전 프로젝트 제작자분에게 감사한 마음을 가집시다!`   <br>
`감사합니다!`   



하이브리드 앱으로 개발한 경우 내부 웹브라우저가 멀티로 작동하지 않아 카카오 아이디로 로그인 지원않는다.    <br>
어찌 방법을 찾아보면 되겠지만, 각자도생하고자 해도 카카오톡 앱이 설치되어있는지 확인하는게 우선인데    <br>
해당 메서드가 인터페이스에 노출되지 않아 해당 인터페이스 추가  
(카카오SDK 변경에 따라 AuthAPI -> UserAPI 로 변경 코드도 적용)

[추가된 메서드]

```javacript

    KakaoLogin.isKakaoTalkLoginAvailable().then((res) => {
    
      console.log("KakaoLogin.isKakaoTalkLoginAvailable():"+ JSON.stringify(res))
      if(res.result) {
      }
    }

```

**응답**

``` json

{result: true|false}

```

## Getting started

### Mostly automatic installation (RN >= 0.60)

```bash
$ npm install @altariz/rn-kakao-login --save
$ cd ios && pod install && cd ..
```

## How to use

```js
import KakaoLogin from '@altariz/rn-kakao-login';

// 카카오 로그인 시 처리부문
const loginOutput = await KakaoLogin.login();

```

|변수명       |설명               |
|-----------|------------------|
|accessToken|카카오의 accessToken|
|refreshToken|카카오의 refreshToken|
|accessTokenExpiresAt|카카오의 accessToken만료일|
|refreshTokenExpiresAt|카카오의 refreshToken만료일|
|scopes|사용권한|


```js
import KakaoLogin from '@altariz/rn-kakao-login';

// 카카오 로그아웃시 처리
await KakaoLogin.logout();


// 카카오 액세스 토큰 가져오는 명령, 로그인 시 자동으로 로그아웃 후 처리됨에 따라
// 별도로 값만 가져올 경우 사용.
// 로직 변경으로 인해 해당 현재 토큰의 대한 정보(아이디, 만료일)만 가져옵니다. 
const accessToken = await KakaoLogins.getAccessToken();


// 카카오 회원정보 가져오기
const profile = await KakaoLogins.getProfile();

```

|변수명|설명               |
|--|------------------|
|id|카카오계정 고유키|
|connected_at|연결한 일자|
|kakao_account|[회원정보](https://developers.kakao.com/sdk/reference/ios-legacy/release/Classes/KOUserMe.html)|
|properties|기타자료|
