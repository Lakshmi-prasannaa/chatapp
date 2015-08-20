Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
    '781409475433-kflbb6l4qqoegva6j7pa2dc8v2vmvvcj.apps.googleusercontent.com',
    'Ap-VZacYNh2bLQkhzukhW-bj',
    {name: "google_login", approval_prompt: ''}
  provider :twitter, 'kkryc4jHx99dpy7YRQnHdjwd8', 
  'wKxpVuUzmy2d6fWOtLfyLy4Xr0ZOOxYs9NV8Dg9njNHJnCJQVL',
 {
      :secure_image_url => 'true',
      :image_size => 'original',
      :authorize_params => {
        :force_login => 'false',
        :lang => 'en'
      }
    }
  provider :facebook, '892668750780326','891f4b4f2fc40630ae9a0c19cffb2a4f',
  {:scope => 'email,user_birthday', :display => 'popup'}
end