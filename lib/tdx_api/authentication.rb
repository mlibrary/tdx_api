module TdxApi
  module Authentication

    BEID = ENV['BEID']
    WEB_SERVICES_KEY = ENV['WEB_SERVICES_KEY']

    def self.login_admin(username = nil, password = nil)
      # TODO: there's got to be a better way to pass thru the args from Client::login than this
      RestClient.post(
        'https://api.teamdynamix.com/TDWebApi/api/auth/loginadmin', 
        BEID: BEID,
        WebServicesKey: WEB_SERVICES_KEY
      ).body
    end

    def self.login(username:, password:)
      RestClient.post(
        'https://api.teamdynamix.com/TDWebApi/api/auth/login', 
        username: username,
        password: password
      ).body
    end

  end
end
