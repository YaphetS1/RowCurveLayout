#
# Be sure to run `pod lib lint BezierRowView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BezierRowView'
  s.version          = '0.1.1'
  s.summary          = 'Its simply creator custom UIView with BezierPath'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Its simply creator custom UIView with BezierPath. It keep you to write easy code for grid of photos without difficulties. Obtaining images based on the URL or your Photo Model, as well as track the click events on a specific layer of this mask and understand where the user clicked. In callback you can get your Model or URL.
                       DESC

  s.homepage         = 'https://github.com/YaphetS1/BezierRowView'
#  s.screenshots      = 'https://pasteboard.co/HscJahK.png', 'https://pasteboard.co/HscJs34.png', 'https://pasteboard.co/HscJCIc.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dmitry Marinin' => '436910463q@gmail.com' }
  s.source           = { :git => 'https://github.com/YaphetS1/BezierRowView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'
#  s.requires_arc = true

  s.source_files = 'BezierRowView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BezierRowView' => ['BezierRowView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'Foundation'
   s.dependency 'SDWebImage', '~> 4.3.0'
end
