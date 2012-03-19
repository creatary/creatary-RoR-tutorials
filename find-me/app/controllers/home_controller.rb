#
# Copyright 2012 Nokia Siemens Networks 
#
class HomeController < ApplicationController
  def index
    redirect_to creatary_path + '/authorize'
  end
  
  def find_me
  end
  
  def denied
  end

end
