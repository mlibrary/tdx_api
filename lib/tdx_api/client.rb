module TDX_API
  class Client

    attr_reader :bearer_token

    def initialize(username, password)
      login(username,password)
    end
  
    def tickets(app_id)
      TicketApp.new(app_id)
    end

    def kb
      Knowledgebase.new
    end

    def assets(app_id)
      AssetApp.new(app_id)
    end

  end
end
