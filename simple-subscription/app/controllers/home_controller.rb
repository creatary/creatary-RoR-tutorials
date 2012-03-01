class HomeController < ApplicationController
  def index
    redirect_to creatary_path + '/authorize?subscription_tariff_name=premium'
  end
  
  def subscribed
  end
  
  def denied
  end
  
  def charging
    logger.info "charging request performed: #{params.inspect}"
    head :ok
  end

end
