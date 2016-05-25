#
#  Be sure to run `pod spec lint XTSafeCollection.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "XTOnePixelLine"
  s.version      = "1.0.1"
  s.summary      = "A convinent way to draw one pixel line on all devices."

  s.description  = <<-DESC
                   One pixel line used to be an annoying problem, because we have multiply screen resolution.
                   We give a universal solution on all devices.

                   DESC

  s.homepage     = "https://github.com/wuwen1030/XTOnePixelLine"
  s.license      = { :type => "MIT" }
  s.author       = { "wuwen" => "wuwen.xb@alibaba-inc.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/wuwen1030/XTOnePixelLine.git", :tag => "1.0.1" }
  s.preserve_paths = '*.framework'
  s.vendored_frameworks = '*.framework'
  s.source_files  = "OnePixelLine/XTOnePixelLine/*.{h,m}"
end
