
Pod::Spec.new do |s|

s.name         = 'SUIUtils'
s.version      = '1.0.0'
s.platform     = :ios, '7.0'
s.summary      = 'A collection of convenient classes for iOS.'

s.license      = 'MIT'
s.homepage     = 'https://github.com/randomprocess/SUIUtils'
s.author       = { 'RandomSuio' => 'randomprocess@qq.com' }
s.source       = { :git => 'https://github.com/randomprocess/SUIUtils.git',
:tag => s.version.to_s }

s.requires_arc = true

s.public_header_files = 'SUIUtils/**/*.h'
s.source_files  = 'SUIUtils/SUIUtils.h'

s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics', 'QuartzCore'

s.subspec 'Tool' do |ss|
ss.source_files = 'SUIUtils/Tool/*.{h,m}'
end

s.subspec 'Categorie' do |ss|

ss.subspec 'Foundation' do |sss|
sss.source_files = 'SUIUtils/Categorie/Foundation/*.{h,m}'
end

ss.subspec 'UIKit' do |sss|
sss.dependency 'SUIUtils/Categorie/Foundation'
sss.source_files = 'SUIUtils/Categorie/UIKit/*.{h,m}'
end

ss.subspec 'BlurEffect' do |sss|
sss.frameworks = 'Accelerate'
sss.source_files = 'SUIUtils/Categorie/BlurEffect/*.{h,m}'
end

end
