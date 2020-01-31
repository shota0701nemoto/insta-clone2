if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['S3_REGION'],     # 例: 'ap-northeast-1'
      :AWS_ACCESS_KEY_ID_MER60    => ENV['S3_ACCESS_KEY'],
      :AWS_SECRET_ACCESS_KEY_MER60 => ENV['S3_SECRET_KEY']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end
