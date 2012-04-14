Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, 'mLTeuyOlA6nxtagbG8yg', 'MtIxiobsynMRpgJO7zx86su6jJpG1sc1tf49wo5Q'
end