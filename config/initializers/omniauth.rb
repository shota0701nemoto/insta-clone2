Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['2884717221754622'], ENV['7ca97273c02f492218f08ea91f640d93']
end


