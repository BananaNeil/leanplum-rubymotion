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

  # In Leanplum > 1.4, uncomment this line:
  # app.embedded_frameworks = ['vendor/Pods/Leanplum-iOS-SDK/Leanplum.framework']

  app.pods do
    pod 'Leanplum-iOS-SDK', '1.3.12'
  end
end
