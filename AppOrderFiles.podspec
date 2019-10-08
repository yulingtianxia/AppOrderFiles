Pod::Spec.new do |s|
s.name         = 'AppOrderFiles'
s.version      = '1.0.0'
s.summary      = 'Generating order files for Mach-O using Clang SanitizerCoverages.'
s.description  = <<-DESC
The easiest way to generate order files for Mach-O using Clang SanitizerCoverage. Improving App Performance.
DESC
s.homepage     = 'https://github.com/wangzhizhou/AppOrderFiles'

s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { 'wangzhizhou' => 'wangzhizhou@gmail.com' }
s.social_media_url = 'https://twitter.com/wangzhizhou'
s.source       = { :git => 'https://github.com/wangzhizhou/AppOrderFiles.git', :tag => s.version.to_s }

s.source_files = 'AppOrderFilesSample/AppOrderFiles/*.{h,m}'
s.public_header_files = 'AppOrderFilesSample/AppOrderFiles/*.h'

s.ios.deployment_target = '8.0'
s.osx.deployment_target = '10.8'
s.tvos.deployment_target = '9.0'
s.watchos.deployment_target = '2.0'
s.requires_arc = true
end

