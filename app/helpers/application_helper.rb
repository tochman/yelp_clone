module ApplicationHelper
  def user_avatar
    gravatar_id = Digest::MD5::hexdigest(current_user.email) if current_user
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    res = Net::HTTP.get_response(URI("#{gravatar_url}?d=404"))
    if res.code == '404'
      'http://www.websitemagazine.com/images/blog/anonymous-user.png'
    else
      gravatar_url
    end
  end
end
