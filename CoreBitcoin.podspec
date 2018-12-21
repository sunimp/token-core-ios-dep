Pod::Spec.new do |s|
  s.name          = "CoreBitcoin"
  s.version       = "0.0.1"
  s.summary       = "CoreBitcoin"

  s.description   = <<-DESC
  Ethereum Core Library powering imToken iOS app.
  DESC

  s.homepage      = "https://token.im"
  s.license       = {
    type: "Apache License, Version 2.0",
    file: "LICENSE"
  }

  s.author        = { "James Chen" => "james@ashchan.com" }
  s.platform      = :ios, "9.0"

  s.source        = { :git => "https://github.com/consenlabs/ios-token-core.git", :tag => "#{s.version}" }
  s.source_files  = "CoreBitcoin/*.{h,m,c}", "libscrypt/*.{h,m,c}"
  s.exclude_files = ['*+Tests.{h,m}']
  s.preserve_paths = ['Modules/*']
  s.pod_target_xcconfig = {
    "SWIFT_INCLUDE_PATHS" => "${PODS_TARGET_SRCROOT}/Modules",
    "OTHER_LDFLAGS" => "-lObjC",
    "SWIFT_OPTIMIZATION_LEVEL" => "-Owholemodule"
  }
  s.requires_arc = true
  s.framework    = 'Foundation'
  s.ios.framework = 'UIKit'
  s.osx.framework = 'AppKit'
  s.dependency "GRKOpenSSLFramework"
end
