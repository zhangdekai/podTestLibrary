#
# Be sure to run `pod lib lint podTestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'podTestLibrary'
s.version          = '0.3.0'
s.summary          = 'A test for podTestLibrary.'
s.description      = <<-DESC
A test for the pod library,for zujianhua development.
DESC

s.homepage         = 'https://github.com/zhangdekai/podTestLibrary.git'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :text => 'LICENSE' }
s.author           = { '张德凯' => 'zdkzhuizhu@163.com' }
s.source           = { :git => 'https://github.com/zhangdekai/podTestLibrary.git', :tag => "0.3.0" }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '8.0'

#s.source_files = 'podTestLibrary/Classes/**/*'
s.subspec 'Tools' do |ss|
    ss.source_files = 'podTestLibrary/Classes/Tools/**/*'
    ss.public_header_files = 'podTestLibrary/Classes/Tools/**/*.h'
end

s.subspec 'Categories' do |ss|
    ss.source_files = 'podTestLibrary/Classes/Categories/**/*'
    ss.public_header_files = 'podTestLibrary/Classes/Categories/**/*.h'
end


# s.resource_bundles = {
#   'podTestLibrary' => ['podTestLibrary/Assets/*.png']
# }

#s.public_header_files = 'Pod/Classes/**/*.h'
#s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end
