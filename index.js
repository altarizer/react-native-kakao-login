import { NativeModules } from 'react-native';

const { ARNKakaoLogin } = NativeModules;

export const login = ARNKakaoLogin.login;
export const isKakaoTalkLoginAvailable = ARNKakaoLogin.isKakaoTalkLoginAvailable;
export const loginWithNewScopes = ARNKakaoLogin.loginWithNewScopes;
export const logout = ARNKakaoLogin.logout;
export const unlink = ARNKakaoLogin.unlink;
export const getAccessToken = ARNKakaoLogin.getAccessToken;
export const getProfile = ARNKakaoLogin.getProfile;

const case_convert = (data) => {
  const args = {};
  for (const key of Object.keys(data)) {
    const nkey = key.replace(/(?:^|\.?)([A-Z])/g, (x, y) => '_' + y.toLowerCase()).replace(/^_/, '');
    if (data[key] && typeof data[key] === 'object' && !data[key]?.push && Object.keys(data[key])?.length > 0) {
      args[nkey] = case_convert(data[key]);
    } else {
      args[nkey] = data[key];
    }
  }

  return args;
};

const KakaoLogin = {
  getAccessToken: async () => case_convert(await getAccessToken()),
  getProfile: async () => case_convert(await getProfile()),
  login: async () => case_convert(await login()),
  isKakaoTalkLoginAvailable: async () => case_convert(await isKakaoTalkLoginAvailable()),
  loginWithNewScopes: async (perms) => case_convert(await loginWithNewScopes(perms)),
  logout,
  unlink,
};

export default KakaoLogin;
