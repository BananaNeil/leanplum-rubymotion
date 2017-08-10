namespace :archive do
  task :distribution do
		Rake::Task['archive:remove_unused_architectures'].invoke
	end

	task :remove_unused_architectures do
    App.config_without_setup.build_mode = :release
    App.config_without_setup.distribution_mode = true
    if File.exist?(App.config.archive)
      sh "mv #{App.config.archive} #{App.config.archive}.old"
    end

		ENV['ARCHS'] = App.config.archs["iPhoneOS"].join(" ")
    sh "bash tasks/remove_unused_architectures.sh"
    puts "Unused Architectures removed, re-archiving executable"
    App.codesign('iPhoneOS')
    App.archive
  end

end
