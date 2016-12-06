#
# Be sure to run `pod lib lint HudlHttpClient.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "URLRouter+ReactNative"
  s.version          = "1.0.0"
  s.summary          = "With URLRouter you can assign actions to URL patterns"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = "With URLRouter assignign actions to URL patterns is very simple. Besides, it can parse path and URL parameters."

  s.homepage         = "https://github.com/hudl/ios-hudl-multiverse-project/URLRouter+ReactNative/"
  s.license          = 'MIT'
  s.author           = { "Alberto Chamorro" => "alberto.chamorro@hudl.com" }
  s.source           = { :git => "https://github.com/hudl/ios-hudl-multiverse-project.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/aichamorro'

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.requires_arc = true

  s.source_files = 'URLRouter+ReactNative/**/*.{h,m}' 
  s.dependency 'URLRouter'
  s.dependency 'React/Core'
  s.dependency 'React/RCTText'
  s.dependency 'React/RCTImage'
  s.dependency 'React/RCTNetwork'
end
