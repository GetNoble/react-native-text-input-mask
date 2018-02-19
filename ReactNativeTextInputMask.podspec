require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|

  s.name           = 'ReactNativeTextInputMask'
  s.version        = package['version'].gsub(/v|-beta/, '')
  s.summary        = package['description']
  s.author         = package['author']
  s.license        = package['license']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/beefe/react-native-picker.git', :tag => "v#{s.version}"}
  s.requires_arc     = true
  s.platform         = :ios, '8.0'
  s.preserve_paths = '*.js'
  s.source_files = 'ios/RNTextInputMask/RNTextInputMask/*.{h,m,swift}'
 
  s.dependency 'React'
  s.dependency 'InputMask'
end

