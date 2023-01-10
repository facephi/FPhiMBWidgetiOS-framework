#
#  Be sure to run `pod spec lint FPhiMBWidgetiOSInternal.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "FPhiMBWidgetiOS"
  spec.version      = "5.20.0"
  spec.summary      = "Support library for Selphid."

  spec.description  = <<-DESC
  Support libraries for SelphID iOS widget.
  DESC
  spec.homepage     = "https://www.facephi.com"
  spec.license = { :type => "Commercial", 
                   :text => <<-LICENSE
                   © Facephi 2021. All rights reserved.
                   LICENSE
              }

  spec.author       = { "FacePhi Biometría" => "developer@facephi.com" }
  spec.source       = { :git => "https://github.com/facephi/microblink-framework.git", :tag => "#{spec.version}" }
  spec.platform     = :ios

  spec.ios.deployment_target = "9.0.0"
  spec.ios.requires_arc = false
  spec.ios.vendored_frameworks = "Microblink.xcframework"
  spec.ios.frameworks = "Accelerate", "AVFoundation", "AudioToolbox", "AssetsLibrary", "CoreMedia"
  spec.ios.libraries = "c++", "iconv", "z"

  spec.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386', 'EXCLUDED_ARCHS' => 'armv7' }
  spec.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386', 'EXCLUDED_ARCHS' => 'armv7' }
  spec.xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386',
    'EXCLUDED_ARCHS' => 'armv7'
    }

end

