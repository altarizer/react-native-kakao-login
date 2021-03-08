require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name    = "ARNKakaoLogin"
  s.version = package['version']
  s.summary = "Kakao Login For React Native."
  
  s.authors   = { "Kaim Lee" => "hslee2000@gmail.com", "Suhan Moon" => "leader@trabricks.io" }
  s.homepage  = "https://github.com/altarizer/rn-kakao-login#readme"
  s.license   = "MIT"

  s.platform      = :ios, "11.0"
  s.framework     = 'UIKit'
  s.requires_arc  = true

  s.source        = { :git => "https://github.com/altarizer/rn-kakao-login.git" }
  s.source_files  = "ios/*.{h,m,swift}"

  s.dependency "React"
  s.dependency "KakaoSDKCommon"
  s.dependency "KakaoSDKAuth"
  s.dependency "KakaoSDKUser"
  s.dependency "KakaoSDKTalk"
  s.dependency "KakaoSDKTemplate"

#  s.dependency "ARNKakaoSDK"

#  s.vendored_frameworks = 'KakaoOpenSDK.framework'

end

  
