if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_react-project-backend', domain: 'https://react-project-frontend.netlify.app/'
  else
    Rails.application.config.session_store :cookie_store, key: '_react-project-backend' 
  end