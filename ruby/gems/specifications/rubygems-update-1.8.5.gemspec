# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rubygems-update}
  s.version = "1.8.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jim Weirich", "Chad Fowler", "Eric Hodel"]
  s.date = %q{2011-05-31}
  s.default_executable = %q{update_rubygems}
  s.description = %q{RubyGems is a package management framework for Ruby.

This gem is an update for the RubyGems software. You must have an
installation of RubyGems before this update can be applied.

See Gem for information on RubyGems (or `ri Gem`)

To upgrade to the latest RubyGems, run:

  $ gem update --system  # you might need to be an administrator or root

See UPGRADING.rdoc for more details and alternative instructions.

-----

If you don't have RubyGems installed, your can still do it manually:

* Download from: https://rubygems.org/pages/download
* Unpack into a directory and cd there
* Install with: ruby setup.rb  # you may need admin/root privilege

For more details and other options, see:

  ruby setup.rb --help}
  s.email = ["rubygems-developers@rubyforge.org"]
  s.executables = ["update_rubygems"]
  s.extra_rdoc_files = ["History.txt", "LICENSE.txt", "MIT.txt", "Manifest.txt", "hide_lib_for_update/note.txt", "README.rdoc", "UPGRADING.rdoc"]
  s.files = [".autotest", ".document", "History.txt", "LICENSE.txt", "MIT.txt", "Manifest.txt", "README.rdoc", "Rakefile", "UPGRADING.rdoc", "bin/gem", "bin/update_rubygems", "ci_build.sh", "cruise_config.rb", "hide_lib_for_update/note.txt", "lib/gauntlet_rubygems.rb", "lib/rbconfig/datadir.rb", "lib/rubygems.rb", "lib/rubygems/builder.rb", "lib/rubygems/command.rb", "lib/rubygems/command_manager.rb", "lib/rubygems/commands/build_command.rb", "lib/rubygems/commands/cert_command.rb", "lib/rubygems/commands/check_command.rb", "lib/rubygems/commands/cleanup_command.rb", "lib/rubygems/commands/contents_command.rb", "lib/rubygems/commands/dependency_command.rb", "lib/rubygems/commands/environment_command.rb", "lib/rubygems/commands/fetch_command.rb", "lib/rubygems/commands/generate_index_command.rb", "lib/rubygems/commands/help_command.rb", "lib/rubygems/commands/install_command.rb", "lib/rubygems/commands/list_command.rb", "lib/rubygems/commands/lock_command.rb", "lib/rubygems/commands/outdated_command.rb", "lib/rubygems/commands/owner_command.rb", "lib/rubygems/commands/pristine_command.rb", "lib/rubygems/commands/push_command.rb", "lib/rubygems/commands/query_command.rb", "lib/rubygems/commands/rdoc_command.rb", "lib/rubygems/commands/search_command.rb", "lib/rubygems/commands/server_command.rb", "lib/rubygems/commands/setup_command.rb", "lib/rubygems/commands/sources_command.rb", "lib/rubygems/commands/specification_command.rb", "lib/rubygems/commands/stale_command.rb", "lib/rubygems/commands/uninstall_command.rb", "lib/rubygems/commands/unpack_command.rb", "lib/rubygems/commands/update_command.rb", "lib/rubygems/commands/which_command.rb", "lib/rubygems/config_file.rb", "lib/rubygems/custom_require.rb", "lib/rubygems/defaults.rb", "lib/rubygems/dependency.rb", "lib/rubygems/dependency_installer.rb", "lib/rubygems/dependency_list.rb", "lib/rubygems/deprecate.rb", "lib/rubygems/doc_manager.rb", "lib/rubygems/errors.rb", "lib/rubygems/exceptions.rb", "lib/rubygems/ext.rb", "lib/rubygems/ext/builder.rb", "lib/rubygems/ext/configure_builder.rb", "lib/rubygems/ext/ext_conf_builder.rb", "lib/rubygems/ext/rake_builder.rb", "lib/rubygems/format.rb", "lib/rubygems/gem_openssl.rb", "lib/rubygems/gem_path_searcher.rb", "lib/rubygems/gem_runner.rb", "lib/rubygems/gemcutter_utilities.rb", "lib/rubygems/indexer.rb", "lib/rubygems/install_update_options.rb", "lib/rubygems/installer.rb", "lib/rubygems/installer_test_case.rb", "lib/rubygems/local_remote_options.rb", "lib/rubygems/mock_gem_ui.rb", "lib/rubygems/old_format.rb", "lib/rubygems/package.rb", "lib/rubygems/package/f_sync_dir.rb", "lib/rubygems/package/tar_header.rb", "lib/rubygems/package/tar_input.rb", "lib/rubygems/package/tar_output.rb", "lib/rubygems/package/tar_reader.rb", "lib/rubygems/package/tar_reader/entry.rb", "lib/rubygems/package/tar_test_case.rb", "lib/rubygems/package/tar_writer.rb", "lib/rubygems/package_task.rb", "lib/rubygems/path_support.rb", "lib/rubygems/platform.rb", "lib/rubygems/remote_fetcher.rb", "lib/rubygems/require_paths_builder.rb", "lib/rubygems/requirement.rb", "lib/rubygems/security.rb", "lib/rubygems/server.rb", "lib/rubygems/source_index.rb", "lib/rubygems/spec_fetcher.rb", "lib/rubygems/specification.rb", "lib/rubygems/test_case.rb", "lib/rubygems/test_utilities.rb", "lib/rubygems/text.rb", "lib/rubygems/uninstaller.rb", "lib/rubygems/user_interaction.rb", "lib/rubygems/validator.rb", "lib/rubygems/version.rb", "lib/rubygems/version_option.rb", "lib/ubygems.rb", "setup.rb", "test/rubygems/bogussources.rb", "test/rubygems/data/gem-private_key.pem", "test/rubygems/data/gem-public_cert.pem", "test/rubygems/fake_certlib/openssl.rb", "test/rubygems/fix_openssl_warnings.rb", "test/rubygems/foo/discover.rb", "test/rubygems/insure_session.rb", "test/rubygems/plugin/exception/rubygems_plugin.rb", "test/rubygems/plugin/load/rubygems_plugin.rb", "test/rubygems/plugin/standarderror/rubygems_plugin.rb", "test/rubygems/private_key.pem", "test/rubygems/public_cert.pem", "test/rubygems/rubygems/commands/crash_command.rb", "test/rubygems/rubygems_plugin.rb", "test/rubygems/sff/discover.rb", "test/rubygems/simple_gem.rb", "test/rubygems/test_config.rb", "test/rubygems/test_gem.rb", "test/rubygems/test_gem_builder.rb", "test/rubygems/test_gem_command.rb", "test/rubygems/test_gem_command_manager.rb", "test/rubygems/test_gem_commands_build_command.rb", "test/rubygems/test_gem_commands_cert_command.rb", "test/rubygems/test_gem_commands_check_command.rb", "test/rubygems/test_gem_commands_cleanup_command.rb", "test/rubygems/test_gem_commands_contents_command.rb", "test/rubygems/test_gem_commands_dependency_command.rb", "test/rubygems/test_gem_commands_environment_command.rb", "test/rubygems/test_gem_commands_fetch_command.rb", "test/rubygems/test_gem_commands_generate_index_command.rb", "test/rubygems/test_gem_commands_help_command.rb", "test/rubygems/test_gem_commands_install_command.rb", "test/rubygems/test_gem_commands_list_command.rb", "test/rubygems/test_gem_commands_lock_command.rb", "test/rubygems/test_gem_commands_outdated_command.rb", "test/rubygems/test_gem_commands_owner_command.rb", "test/rubygems/test_gem_commands_pristine_command.rb", "test/rubygems/test_gem_commands_push_command.rb", "test/rubygems/test_gem_commands_query_command.rb", "test/rubygems/test_gem_commands_server_command.rb", "test/rubygems/test_gem_commands_sources_command.rb", "test/rubygems/test_gem_commands_specification_command.rb", "test/rubygems/test_gem_commands_stale_command.rb", "test/rubygems/test_gem_commands_uninstall_command.rb", "test/rubygems/test_gem_commands_unpack_command.rb", "test/rubygems/test_gem_commands_update_command.rb", "test/rubygems/test_gem_commands_which_command.rb", "test/rubygems/test_gem_config_file.rb", "test/rubygems/test_gem_dependency.rb", "test/rubygems/test_gem_dependency_installer.rb", "test/rubygems/test_gem_dependency_list.rb", "test/rubygems/test_gem_doc_manager.rb", "test/rubygems/test_gem_ext_configure_builder.rb", "test/rubygems/test_gem_ext_ext_conf_builder.rb", "test/rubygems/test_gem_ext_rake_builder.rb", "test/rubygems/test_gem_format.rb", "test/rubygems/test_gem_gem_path_searcher.rb", "test/rubygems/test_gem_gem_runner.rb", "test/rubygems/test_gem_gemcutter_utilities.rb", "test/rubygems/test_gem_indexer.rb", "test/rubygems/test_gem_install_update_options.rb", "test/rubygems/test_gem_installer.rb", "test/rubygems/test_gem_local_remote_options.rb", "test/rubygems/test_gem_package_tar_header.rb", "test/rubygems/test_gem_package_tar_input.rb", "test/rubygems/test_gem_package_tar_output.rb", "test/rubygems/test_gem_package_tar_reader.rb", "test/rubygems/test_gem_package_tar_reader_entry.rb", "test/rubygems/test_gem_package_tar_writer.rb", "test/rubygems/test_gem_package_task.rb", "test/rubygems/test_gem_path_support.rb", "test/rubygems/test_gem_platform.rb", "test/rubygems/test_gem_remote_fetcher.rb", "test/rubygems/test_gem_requirement.rb", "test/rubygems/test_gem_security.rb", "test/rubygems/test_gem_server.rb", "test/rubygems/test_gem_silent_ui.rb", "test/rubygems/test_gem_source_index.rb", "test/rubygems/test_gem_spec_fetcher.rb", "test/rubygems/test_gem_specification.rb", "test/rubygems/test_gem_stream_ui.rb", "test/rubygems/test_gem_text.rb", "test/rubygems/test_gem_uninstaller.rb", "test/rubygems/test_gem_validator.rb", "test/rubygems/test_gem_version.rb", "test/rubygems/test_gem_version_option.rb", "test/rubygems/test_kernel.rb", "util/CL2notes", "util/gem_prelude.rb", ".gemtest"]
  s.homepage = %q{http://rubygems.org}
  s.rdoc_options = ["--main", "README.rdoc", "--title=RubyGems 1.8.5 Documentation"]
  s.require_paths = ["hide_lib_for_update"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = %q{rubygems}
  s.rubygems_version = %q{1.5.1}
  s.summary = %q{RubyGems is a package management framework for Ruby}
  s.test_files = ["test/rubygems/test_config.rb", "test/rubygems/test_gem.rb", "test/rubygems/test_gem_builder.rb", "test/rubygems/test_gem_command.rb", "test/rubygems/test_gem_command_manager.rb", "test/rubygems/test_gem_commands_build_command.rb", "test/rubygems/test_gem_commands_cert_command.rb", "test/rubygems/test_gem_commands_check_command.rb", "test/rubygems/test_gem_commands_cleanup_command.rb", "test/rubygems/test_gem_commands_contents_command.rb", "test/rubygems/test_gem_commands_dependency_command.rb", "test/rubygems/test_gem_commands_environment_command.rb", "test/rubygems/test_gem_commands_fetch_command.rb", "test/rubygems/test_gem_commands_generate_index_command.rb", "test/rubygems/test_gem_commands_help_command.rb", "test/rubygems/test_gem_commands_install_command.rb", "test/rubygems/test_gem_commands_list_command.rb", "test/rubygems/test_gem_commands_lock_command.rb", "test/rubygems/test_gem_commands_outdated_command.rb", "test/rubygems/test_gem_commands_owner_command.rb", "test/rubygems/test_gem_commands_pristine_command.rb", "test/rubygems/test_gem_commands_push_command.rb", "test/rubygems/test_gem_commands_query_command.rb", "test/rubygems/test_gem_commands_server_command.rb", "test/rubygems/test_gem_commands_sources_command.rb", "test/rubygems/test_gem_commands_specification_command.rb", "test/rubygems/test_gem_commands_stale_command.rb", "test/rubygems/test_gem_commands_uninstall_command.rb", "test/rubygems/test_gem_commands_unpack_command.rb", "test/rubygems/test_gem_commands_update_command.rb", "test/rubygems/test_gem_commands_which_command.rb", "test/rubygems/test_gem_config_file.rb", "test/rubygems/test_gem_dependency.rb", "test/rubygems/test_gem_dependency_installer.rb", "test/rubygems/test_gem_dependency_list.rb", "test/rubygems/test_gem_doc_manager.rb", "test/rubygems/test_gem_ext_configure_builder.rb", "test/rubygems/test_gem_ext_ext_conf_builder.rb", "test/rubygems/test_gem_ext_rake_builder.rb", "test/rubygems/test_gem_format.rb", "test/rubygems/test_gem_gem_path_searcher.rb", "test/rubygems/test_gem_gem_runner.rb", "test/rubygems/test_gem_gemcutter_utilities.rb", "test/rubygems/test_gem_indexer.rb", "test/rubygems/test_gem_install_update_options.rb", "test/rubygems/test_gem_installer.rb", "test/rubygems/test_gem_local_remote_options.rb", "test/rubygems/test_gem_package_tar_header.rb", "test/rubygems/test_gem_package_tar_input.rb", "test/rubygems/test_gem_package_tar_output.rb", "test/rubygems/test_gem_package_tar_reader.rb", "test/rubygems/test_gem_package_tar_reader_entry.rb", "test/rubygems/test_gem_package_tar_writer.rb", "test/rubygems/test_gem_package_task.rb", "test/rubygems/test_gem_path_support.rb", "test/rubygems/test_gem_platform.rb", "test/rubygems/test_gem_remote_fetcher.rb", "test/rubygems/test_gem_requirement.rb", "test/rubygems/test_gem_security.rb", "test/rubygems/test_gem_server.rb", "test/rubygems/test_gem_silent_ui.rb", "test/rubygems/test_gem_source_index.rb", "test/rubygems/test_gem_spec_fetcher.rb", "test/rubygems/test_gem_specification.rb", "test/rubygems/test_gem_stream_ui.rb", "test/rubygems/test_gem_text.rb", "test/rubygems/test_gem_uninstaller.rb", "test/rubygems/test_gem_validator.rb", "test/rubygems/test_gem_version.rb", "test/rubygems/test_gem_version_option.rb", "test/rubygems/test_kernel.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, [">= 2.1.0"])
      s.add_development_dependency(%q<builder>, ["~> 2.1"])
      s.add_development_dependency(%q<hoe-seattlerb>, ["~> 1.2"])
      s.add_development_dependency(%q<session>, ["~> 2.4"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.0"])
      s.add_development_dependency(%q<rcov>, ["~> 0.9.0"])
      s.add_development_dependency(%q<ZenTest>, ["~> 4.5"])
      s.add_development_dependency(%q<hoe>, [">= 2.9.4"])
    else
      s.add_dependency(%q<minitest>, [">= 2.1.0"])
      s.add_dependency(%q<builder>, ["~> 2.1"])
      s.add_dependency(%q<hoe-seattlerb>, ["~> 1.2"])
      s.add_dependency(%q<session>, ["~> 2.4"])
      s.add_dependency(%q<rdoc>, ["~> 3.0"])
      s.add_dependency(%q<rcov>, ["~> 0.9.0"])
      s.add_dependency(%q<ZenTest>, ["~> 4.5"])
      s.add_dependency(%q<hoe>, [">= 2.9.4"])
    end
  else
    s.add_dependency(%q<minitest>, [">= 2.1.0"])
    s.add_dependency(%q<builder>, ["~> 2.1"])
    s.add_dependency(%q<hoe-seattlerb>, ["~> 1.2"])
    s.add_dependency(%q<session>, ["~> 2.4"])
    s.add_dependency(%q<rdoc>, ["~> 3.0"])
    s.add_dependency(%q<rcov>, ["~> 0.9.0"])
    s.add_dependency(%q<ZenTest>, ["~> 4.5"])
    s.add_dependency(%q<hoe>, [">= 2.9.4"])
  end
end
