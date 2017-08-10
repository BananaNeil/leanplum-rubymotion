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

  [
    'vendor/Pods/Leanplum-iOS-SDK/Leanplum.framework',
    'vendor/Pods/Leanplum-iOS-UIEditor/LeanplumUIEditor.framework',
  ].each do |path|
    app.embedded_frameworks << path if File.exists?(path)
  end

  app.pods do
    pod 'Leanplum-iOS-SDK', '2.0.2'
    pod 'Leanplum-iOS-UIEditor', '2.0.2'
  end
end
