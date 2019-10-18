require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "ReactNativeNavigation"
  s.version      = package['version']
  s.summary      = package['description']

  s.authors      = "Wix.com"
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platform     = :ios, "9.0"

  s.module_name  = 'ReactNativeNavigation'

  s.source       = { :git => "https://github.com/r-anandhan/react-native-navigation.git", :commit=> "a9330bb965ab7ae37bd77db46e930abb4ef482c0" }
  s.source_files  = "ios/**/*.{h,m}"
  s.exclude_files  = "ios/ReactNativeNavigationTests/**/*.*", "ios/OCMock/**/*.*"

  s.dependency 'React'
  s.frameworks = 'UIKit'
end
