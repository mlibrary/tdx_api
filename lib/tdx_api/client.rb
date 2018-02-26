module TdxApi
  class Client

    attr_reader :login_type, :credentials

    def initialize(login_type, options = {username: nil, password: nil})
      case login_type
      when :login_admin
        @login_type = :login_admin
        @bearer_token = TdxApi::Authentication.login_admin
      when :login
        @login_type = :login
        @credentials = options
        @bearer_token = TdxApi::Authentication.login(@credentials)
      else
        raise ArgumentError '`login_type` must be :login or :login_admin'
      end
    end
  
    def tickets(app_id)
      TicketApp.new(app_id, @bearer_token)
    end

    def kb
      Knowledgebase.new
    end

    def assets(app_id)
      AssetApp.new(app_id)
    end

    def login
      TdxApi::Authentication.send(@login_type, @login_type, @credentials)
    end

    def token_expired?
      Time.at(JWT.decode(@bearer_token, nil, false)[0]['exp']) <= Time.now
    end

    def token_expiry
      Time.at(JWT.decode(@bearer_token, nil, false)[0]['exp'])
    end

    def bearer_token
      # TODO: Refactor into new class
      if token_expired?
        @bearer_token = self.login
      else
        @bearer_token
      end
    end

  end
end
