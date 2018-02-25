module TdxApi
  module Authentication

    TDX_BEID = ENV['BEID']
    TDX_WEB_SERVICES_KEY = ENV['WEB_SERVICES_KEY']

    def tdx_token_expired?
      token ||= generate_tdx_token
      Time.at(JWT.decode(token, nil, false)[0]['exp']) <= Time.now
    end

    def generate_tdx_token
      RestClient.post(
        'https://api.teamdynamix.com/TDWebApi/api/auth/loginadmin', 
        BEID: TDX_BEID,
        WebServicesKey: TDX_WEB_SERVICES_KEY
      ).body
    end

    def tdx_token
      token ||= generate_tdx_token
      if tdx_token_expired?
        token = generate_tdx_token
      else
        token
      end
    end
  end
end
