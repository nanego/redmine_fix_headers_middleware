require 'rack/utils'

class FixRedmineHeadersMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["HTTP_X_FORWARDED_HOST"]
      env["HTTP_X_FORWARDED_HOST"].gsub!(/,\s?[^,]+.ac.cs$/,"")
    end
    @app.call(env)
  end
end

RedmineApp::Application.config.middleware.use FixRedmineHeadersMiddleware
