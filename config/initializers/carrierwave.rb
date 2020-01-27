

# Access Key ID: AKIARIOQRUP3M2ZZBTPG 
# Secret Access Key: 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

# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     provider:              'AWS',                        # required
#     aws_access_key_id:     ENV["AWS_ACCESS_KEY"],        # required
#     aws_secret_access_key: ENV["AWS_SECRECT_ACCESS_KEY"],        # required
#   }
#   config.fog_directory  = ENV["AWS_BUCKET"]              # required
# end

CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:               'AWS',
    aws_access_key_id:      ENV['AWS_ACCESS_KEY'],
    aws_secret_access_key:  ENV['AWS_SECRECT_ACCESS_KEY'],
    region:                 ENV['AWS_REGION'],
  }
  config.permissions = 0666
  config.storage = :fog
  config.cache_dir = "#{Rails.root}/tmp/"
  # config.fog_directory = ENV['FOG_DIRECTORY']
  config.fog_directory  = ENV["AWS_BUCKET"]
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
end
