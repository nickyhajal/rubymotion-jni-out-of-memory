# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'

begin
  require 'rubygems'
  require 'bundler'
  require 'motion-gradle'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'JNI Memory Sample'
  app.permissions = [:internet]
  app.package = "com.nickyhajal.jnimemorysample"
  app.vendor_project jar: "vendor/volley-1.0.9.jar"
  app.api_version = '15'
  app.development { app.archs << 'x86' }
end
