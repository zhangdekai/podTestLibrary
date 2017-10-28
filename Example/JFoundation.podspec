Pod::Spec.new do |s|

  s.name         = "JFoundation"
  s.version      = "2.6.0"
  s.summary      = "This is Main Foundation Component for Jiuxiu App."
  s.description  = <<-DESC
                   A Main Foundation Component for Other Kit
                   DESC

  s.homepage     = "http://192.168.1.111/iOS/JFoundation.git"
  s.license      = { :type => "MIT", :text => <<-LICENSE
                      Copyright 2016 Beijing Jiuxiu Information Technology Co.,Ltd.
                     LICENSE
                   }
  s.author       = { "guangfeng" => "guangfeng@live.cn" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "http://192.168.1.111/iOS/JFoundation.git", :branch => "develop_swift3.0" }

  s.subspec "Extension" do |ss|
    ss.source_files = "JFoundation/Extension/*.swift", "Common/Extension/*.swift"
  end

  s.subspec "Helpers" do |ss|
    ss.source_files = "Common/Helpers/*.swift", "JFoundation/Helpers/*.swift"
    ss.dependency 'Basic'
  end

  s.subspec "Protocols" do |ss|
    ss.source_files = "Common/Protocols/*.swift", "JFoundation/Protocols/*.swift"
  end

  s.subspec "Core" do |ss|
    ss.source_files = "JFoundation/Core/*.swift"
  end

  s.subspec "Cache" do |ss|
    ss.source_files = "JFoundation/Cache/*.swift"
  end

  s.subspec "Inherit" do |ss|
    ss.source_files = "JFoundation/Inherit/*.swift"
  end

  s.subspec "JAnalytics" do |ss|
    ss.public_header_files = "Common/JAnalytics/GzipCompressUtils.h"
    ss.source_files = "JFoundation/JAnalytics/*.swift", "Common/JAnalytics/*.{swift,h,m}"
  end

  s.subspec "JCrashProcess" do |ss|
    ss.public_header_files = "JFoundation/JCrashProcess/UncaughtExceptionHandler.h"
    ss.source_files = "JFoundation/JCrashProcess/*.{swift,h,m}"
  end

  s.subspec "JQRCode" do |ss|
    ss.source_files = "JFoundation/JQRCode/*.swift"
  end

  s.subspec "Login" do |ss|
    ss.source_files = "JFoundation/Login/*.swift"
  end

  s.subspec "AmpilyPicture" do |ss|
    ss.source_files = "JFoundation/AmpilyPicture/*.swift"
  end

  s.subspec "SKPhotoBrowser" do |ss|
    ss.source_files = "JFoundation/SKPhotoBrowser/**/*.swift"
    ss.frameworks = "UIKit"
  end

  s.subspec "PickPhotos" do |ss|
    ss.source_files = "JFoundation/PickPhotos/*.swift"
  end

  s.subspec "SharePay" do |ss|
    ss.source_files = "JFoundation/SharePay/*.swift"
  end

  s.subspec "StreamPlayer" do |ss|
    ss.source_files = "JFoundation/StreamPlayer/*.swift"
    #ss.resources = "JFoundation/StreamPlayer/Sounds.bundle"
  end

  s.subspec "Views" do |ss|
    ss.source_files = "JFoundation/Views/**/*.{h,m,swift}"
    ss.public_header_files = "JFoundation/Views/**/*.h"
  end

  s.subspec "URLHandler" do |ss|
    ss.public_header_files = "Common/URLHandler/URLHandler.h"
    ss.source_files = "Common/URLHandler/*.{swift,h,m}"
  end

  s.source_files = "JFoundation/JFoundation.h"
  s.public_header_files = "JFoundation/JFoundation.h"
  s.resource_bundles = { 'JFoundation' => ['JFoundation/Views/**/*.{storyboard,xib,bundle}', 'JFoundation/Login/*.storyboard', 'JFoundation/Resources/*.xcassets', 'JFoundation/PickPhotos/*.{xib, storyboard}', 'JFoundation/StreamPlayer/Sounds.bundle'] }

  s.dependency 'Basic'
  s.dependency 'JExtManager'
  s.dependency 'JNetworking'

  s.dependency 'MJRefresh'
  s.dependency 'RxCocoa'
  s.dependency 'URLNavigator'
  s.dependency 'RealmSwift'
  s.dependency 'SwiftDate'
  s.dependency 'Kingfisher'

  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-DJFoundation',
  }

end
