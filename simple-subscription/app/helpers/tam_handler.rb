class TamHandler
  def authorized(user, session, subscription_tariff_name)
    session[:user] = user
    puts "tariff name #{subscription_tariff_name}"
    '/home/subscribed'
  end

  def denied(session)
    '/home/denied'
  end
  
  def lifecycle_notification(channel, invoker, reason, application_name, notification_type, access_tokens)
    puts "channel #{channel}"
    puts "invoker #{invoker}"
    puts "reason #{reason}"
    puts "application_name #{application_name}"
    puts "notification_type #{notification_type}"
    puts "access_tokens #{access_tokens}"
  end
end