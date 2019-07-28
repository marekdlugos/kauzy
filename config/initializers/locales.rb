I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
I18n.default_locale = :sk
I18n.available_locales = [:sk, :en]