# Load the Rails application.
require File.expand_path('../application', __FILE__)

APP_CONFIG = YAML.load_file(Rails.root.join 'config/config.yml')[Rails.env].with_indifferent_access

# Initialize the Rails application.
PhotoGalery::Application.initialize!
