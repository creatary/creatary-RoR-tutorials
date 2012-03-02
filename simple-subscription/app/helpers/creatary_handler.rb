class CreataryHandler
  def authorized(user, session, subscription_tariff_name)
    session[:user] = user
    Rails.logger.info "Subscription authorized:"
    Rails.logger.info "user #{user}"
    Rails.logger.info "tariff name #{subscription_tariff_name}"
    '/home/subscribed'
  end

  def denied(session)
    '/home/denied'
  end
  
  def lifecycle_notification(channel, invoker, reason, application_name, notification_type, access_tokens)
    Rails.logger.info "Lifecycle notification:"
    Rails.logger.info "channel #{channel}"
    Rails.logger.info "invoker #{invoker}"
    Rails.logger.info "reason #{reason}"
    Rails.logger.info "application_name #{application_name}"
    Rails.logger.info "notification_type #{notification_type}"
    Rails.logger.info "access_tokens #{access_tokens}"
  end
end