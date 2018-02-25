module TDX_API
  module Knowledgebase
    def kb_search query={}
      POST 'knowledgebase/search', query.to_json
    end

    def kb_categories
      response = RestClient.get(
        'https://api.teamdynamix.com/TDWebApi/api/knowledgebase/categories',
        content_type: :json,
        accept: :json,
        Authorization: "Bearer #{tdx_token}")
      JSON.parse(response.body, object_class: OpenStruct)
    end

    def kb_category(id)
      response = RestClient.get(
        'https://api.teamdynamix.com/TDWebApi/api/knowledgebase/categories' + id.to_s,
        content_type: :json,
        accept: :json,
        Authorization: "Bearer #{tdx_token}")
      JSON.parse(response.body, object_class: OpenStruct)
    end

    def article(id)
      GET "/knowledgebase/#{id.to_s}"
    end
  end
end
