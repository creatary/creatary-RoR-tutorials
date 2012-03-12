class HomeController < ApplicationController
  def index
    redirect_to creatary_path + '/authorize?subscription_tariff_name=premium'
  end
  
  def subscribed
  end
  
  def unsubscribe
  end
  
  def unsubscribed
    logger.info "#{params.inspect}"
    user = Creatary::User.new(params[:access_token], params[:token_secret])
    logger.info Creatary::API.unregister(user)
  end
  
  def denied
  end
  
  def charging
    logger.info "charging request performed: #{params.inspect}"
    head :ok
  end

end
