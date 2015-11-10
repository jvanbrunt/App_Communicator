#
# Be sure to run `pod lib lint App_Communicator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "App_Communicator"
  s.version          = "0.1.0"
  s.summary          = "A tool used to easy send data through open url."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
This is for easy communication between iOS applications. It allows you to setup default data that is passed with every openURL call. It make it easy to add actions and additional parameters.
                       DESC

  s.homepage         = "https://github.com/jvanbrunt/App_Communicator"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Jacob Van Brunt" => "jvanbrunt@developertown.com" }
  s.source           = { :git => "https://github.com/jvanbrunt/App_Communicator.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/OutDooorNerd'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'App_Communicator' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
