class CreataryHandler
  def authorized(user, session)
    coords = Creatary::API.getcoord(user)["body"]
    session[:coords] = coords
    '/home/find_me'
  end

  def denied(session)
    '/home/denied'
  end
end
