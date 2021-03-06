//
//  ARNKakaoLoginBridge.m
//  ARNKakaoLogin
//
//  Created by Suhan Moon on 2020/08/27.
//

#import "ARNKakaoLoginBridge.h"
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(ARNKakaoLogin, NSObject)

RCT_EXTERN_METHOD(login:(RCTPromiseResolveBlock *)resolve rejecter:(RCTPromiseRejectBlock *)reject);
RCT_EXTERN_METHOD(isKakaoTalkLoginAvailable:(RCTPromiseResolveBlock *)resolve rejecter:(RCTPromiseRejectBlock *)reject);
RCT_EXTERN_METHOD(logout:(RCTPromiseResolveBlock *)resolve rejecter:(RCTPromiseRejectBlock *)reject);
RCT_EXTERN_METHOD(unlink:(RCTPromiseResolveBlock *)resolve rejecter:(RCTPromiseRejectBlock *)reject);
RCT_EXTERN_METHOD(getAccessToken:(RCTPromiseResolveBlock *)resolve rejecter:(RCTPromiseRejectBlock *)reject);
RCT_EXTERN_METHOD(getProfile:(RCTPromiseResolveBlock *)resolve rejecter:(RCTPromiseRejectBlock *)reject);
RCT_EXTERN_METHOD(loginWithNewScopes:(NSArray *)scopes
                  resolver:(RCTPromiseResolveBlock *)resolve
                  rejecter:(RCTPromiseRejectBlock *)reject);

@end
