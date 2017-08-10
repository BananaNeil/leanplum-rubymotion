# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'leanplum_test'

  if File.exists? 'vendor/Pods/Leanplum-iOS-SDK/Leanplum.framework'
    app.embedded_frameworks = [
      'vendor/Pods/Leanplum-iOS-SDK/Leanplum.framework',
    ]
  end

  app.pods do
    pod 'Leanplum-iOS-SDK', '2.0.2'
  end
end
