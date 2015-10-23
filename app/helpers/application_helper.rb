module ApplicationHelper
  def user_avatar(object)
    gravatar_id = Digest::MD5::hexdigest(object.user.email) if object.user
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    res = Net::HTTP.get_response(URI("#{gravatar_url}?d=404"))
    (res.code == '404') ? 'http://www.websitemagazine.com/images/blog/anonymous-user.png' : gravatar_url
  end

  def creator_name(object)

  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
