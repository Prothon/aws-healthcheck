module Healthcheck
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      return [200, {}, []] if env['PATH_INFO'] == '/healthcheck' || env['PATH_INFO'] == '/healthcheck.json'
      @app.call env
    end
  end
end
