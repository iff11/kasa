EmberCLI.configure do |config|
  config.app :frontend
  config.app :frontend, build_timeout: 30
end
