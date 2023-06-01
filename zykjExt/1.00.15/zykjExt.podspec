#
#  Be sure to run `pod spec lint BLAPIManagers.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "zykjExt"

  s.version      = "1.00.15"
  s.summary      = "zykjUtils."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                    this is ImFoundation
                   DESC

  s.homepage     = "https://github.com/xiaozo/zykjExt"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more infoßß.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "CasaTaloyum" => "casatwy@msn.com" }
  # Or just: s.author    = "CasaTaloyum"
  # s.authors            = { "CasaTaloyum" => "casatwy@msn.com" }
  # s.social_media_url   = "http://twitter.com/CasaTaloyum"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "9.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/xiaozo/zykjExt.git" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #


  #//这是需要添加mrc标识的文件，为相对路径
  aFNetworking_files = "zykjExt/zykjExt/AFNetworking/**/*.{h,m,swift}"
  sDWebImage_files = "zykjExt/zykjExt/SDWebImage/**/*.{h,m,swift}"
  log_files = "zykjExt/zykjExt/Log/**/*.{h,m,swift}"
  myLayout_files = "zykjExt/zykjExt/MyLayout/**/*.{h,m,swift}"
  masonry_files = "zykjExt/zykjExt/Masonry/**/*.{h,m,swift}"
  
  s.source_files  = "zykjExt/zykjExt/**/*.{h,m,swift}"

  s.exclude_files = aFNetworking_files,sDWebImage_files,log_files,masonry_files,myLayout_files
    
      #二级目录
   s.subspec 'MyLayout' do |ss|
    ss.source_files = myLayout_files
    end
    
  #二级目录
   s.subspec 'AFNetworking' do |ss|
    ss.source_files = aFNetworking_files
    end
    
   #二级目录
   s.subspec 'SDWebImage' do |ss|
    ss.source_files = sDWebImage_files
    end
    
    #二级目录
   s.subspec 'Log' do |ss|
    ss.source_files = log_files
    end
    
   #二级目录
   s.subspec 'Masonry' do |ss|
    ss.source_files = masonry_files
    end

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  
    #s.resources = ['zykjExt/zykjExt/**/*.xib','zykjExt/zykjExt/**/*.bundle','zykjExt/zykjExt/**/*.xcassets','zykjExt/zykjExt/**/*.bundle','zykjExt/zykjExt/*.lproj']
  
  # s.resource = 'Resoure/**/*.xcassets'
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.
  
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "BLNetworking"
  # s.dependency "BLAPIManagers"
  # s.dependency "BLMediator"
  s.dependency "YYModel" , "~> 1.0.4"
  s.dependency "YYCategories" , "~> 1.0.4"
  s.dependency "SDWebImage" , "~> 5.9.2"
  s.dependency "Aspects" , "~> 1.4.1"
  s.dependency "YYText" , "~> 1.0.7"
  s.dependency "MJRefresh" , "~> 3.5.0"
  s.dependency "ReactiveObjC" , "~> 3.1.1"

  s.user_target_xcconfig = {
        'GENERATE_INFOPLIST_FILE' => 'YES'
    }

  s.pod_target_xcconfig = {
        'GENERATE_INFOPLIST_FILE' => 'YES'
    }

end
