Sidekiq.configure_server do |config|
  config.redis = { :url => 'redis://127.0.0.1:6379', :namespace =>  'ruby_gem'}
end

Sidekiq.configure_client do |config|
  config.redis = { :url => 'redis://127.0.0.1:6379', :namespace => 'ruby_gem' }
end