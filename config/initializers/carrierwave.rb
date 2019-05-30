CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],                        # required unless using use_iam_profile
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],                        # required unless using use_iam_profile
    region:                ENV['AWS_REGION'],                  # optional, defaults to 'us-east-1'
    :path_style            => true
  }
  config.fog_directory  = 'tinnin-brittany-two-portfolio'                                      # required
end