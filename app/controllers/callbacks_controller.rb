class CallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_omniauth(request.env['omniauth.auth'])
    binding.pry
    sign_in_and_redirect @user
  end

  def failure
    flash[:notice] = 'Something went wrong'
    super
  end
end
#https://yelpzy.herokuapp.com/users/auth/facebook/callback?code=AQCh92VYAoJ051m_YnC-9QjsSmwi30kTlAvSJelyfkc6dbV7iM3WGrZqywgbk2jlymWi6Jrn_UXzLDoB_ZvG1Y8dOJVw51XqZ1m7SSfZ04wGUIg-FXFQnhO6s_POmm6oitfuo5Zxex3Ij4HhvnNrD1HdAVk-RgJWtYWg1nYt2peZWDdOqHagN_8TiDZytuNW15K0Ay7M1gcWQZtCtux5JwaO0JdT_fyMhTsTeFlrMe8rT0GCDYnDqr9MKyf1eaH4Oj_BmPHUBsFzoXHrXv6noS1NqXlD8Io1W3ARuj8lavqASARSNbHDKnfOLZGpLk04RkiL_Colxwe0EQLbRMDdfVGI&state=b2d237fadda892337a096557c5d5235e10752c659389d52e#_=_