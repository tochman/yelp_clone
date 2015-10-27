module OmniAuthTestHelper
  def valid_facebook_login_setup
    if Rails.env.test?
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new(
          {provider: 'facebook',
           uid: '10205522242159630',
           info: {email: 'thomas@nocebo.se',
                  name: 'Thomas Ochman',
                  image: 'http://graph.facebook.com/10205522242159630/picture'},
           credentials: {token: 'CAAXC253O740BAEnOy6oM295SSQ9Djj3NwNGgIhYc12Gzjsh5LrfJJAf4lsxX6Ve4fKMsVeqkiq8hoCQqiinOfBhfjhZBZCTEVCg5HKnXU9gXJfKAyX26YfBoZAZAMejlJ6GmoNINjAxjS4T8Km4lemf4xQpEO1YXZBxmwssMuJwFoWu2CbrUZC3pA8sZAUfrzcZD',
                         expires_at: 1451123344,
                         expires: true},
           extra: {raw_info: {email: 'thomas@nocebo.se', name: 'Thomas Ochman', id: '10205522242159630'}}
          }

      )
    end
  end
end