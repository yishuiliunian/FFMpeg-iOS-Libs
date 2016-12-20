
Pod::Spec.new do |s|
  s.name         = "FFMpeg-iOS-Libs"
  s.version      = "2.8.3"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/yishuiliunian/FFMpeg-iOS-Libs"

  s.license      = { :type => 'LGPL', :file => 'LICENSE' }
  s.author       = { "Chris Ballinger" => "chris@chatsecure.org" } # Podspec maintainer
  s.requires_arc = false

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/yishuiliunian/FFMpeg-iOS-Libs", :tag => "2.8.3", :submodules => true }

  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'Pod/include/**/*.h'
    ss.public_header_files = 'Pod/include/**/*.h'
    ss.header_mappings_dir = 'Pod/include'
    ss.vendored_libraries  = 'Pod/lib/*.a'
    ss.libraries = 'avcodec', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
  end

end
