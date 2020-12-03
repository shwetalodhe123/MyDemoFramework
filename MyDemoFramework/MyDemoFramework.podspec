Pod::Spec.new do |spec|

  spec.name         = "MyDemoFramework"
  spec.version      = "1.0.0"
  spec.summary      = "This is amazing framework created by developer"
  spec.description  = "Ths framework is demo framework and this framework I would like to use for all my upcoming project for ease of access of functionality and ease of actions"
  spec.homepage     = "https://github.com/shwetalodhe123/MyDemoFramework"
  spec.license      = "MIT"
  spec.author       = { "Shweta Lodhe" => "shwetalodhe@gmail.com" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/shwetalodhe123/MyDemoFramework.git", :tag => "1.0.0" }
  spec.source_files = "MyDemoFramework/**/*.swift"
  spec.swift_versions = "4.2"
  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
