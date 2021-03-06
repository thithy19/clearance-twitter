require File.expand_path(File.dirname(__FILE__) + "/../lib/insert_commands.rb")

class ClearanceTwitterFeaturesGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory File.join("features", "step_definitions")

      ["features/step_definitions/clearance_twitter_steps.rb",
       "features/twitter_sign_in.feature",
       "features/twitter_sign_up.feature",
       "features/support/clearance_twitter_support.rb"].each do |file|
        m.file file, file
      end
    end
  end
end
