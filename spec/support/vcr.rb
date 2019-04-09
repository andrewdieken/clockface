VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.ignore_localhost = true

  FILTERED_VARIABLES = [
    "FACE_API_KEY",
  ]

  FILTERED_VARIABLES.each do |var|
    config.filter_sensitive_data("[#{var}]") { ENV[var] }
  end
end
