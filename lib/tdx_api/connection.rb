module TDX
  module Connection

    def POST endpoint, payload
      response = RestClient.post(
        "https://api.teamdynamix.com/TDWebApi/api#{endpoint}",
        payload,
        content_type: :json,
        accept: :json,
        Authorization: "Bearer #{tdx_token}")
      JSON.parse(response.body)
    end

    def GET endpoint
      response = RestClient.get(
        "https://api.teamdynamix.com/TDWebApi/api#{endpoint}",
        content_type: :json,
        accept: :json,
        Authorization: "Bearer #{tdx_token}")
      JSON.parse(response.body)
    end

    def DELETE
    end

    def PATCH
    end

  end
end
