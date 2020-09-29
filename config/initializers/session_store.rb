if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_react-project-backend", domain: "https://react-project-backend.herokuapp.com/"
else
  Rails.application.config.session_store :cookie_store, key: "_react-project-backend"
end
