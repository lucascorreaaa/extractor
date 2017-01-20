OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret_key'],
    scope: 'public_profile,read_insights,read_audience_network_insights,read_page_mailboxes,manage_pages,
    publish_pages,pages_show_list'
end
