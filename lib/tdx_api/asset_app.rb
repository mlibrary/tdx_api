module TdxApi
  class AssetApp
    include TdxApi::Connection

    attr_reader :app_id, :bearer_token

    def initialize(app_id, bearer_token)
      @app_id = app_id
      @bearer_token = bearer_token
    end

    def create(asset)
      #rate_limit 60
      
      #TODO: check duck type of the asset param
      POST "/#{app_id}/assets", asset
    end
    
    def asset(id)
      #rate_limit none
      asset_obj = GET "/#{app_id}/assets/#{id}"
      Asset.new(asset_obj)
    end

    def search(query)
      #rate_limit 60

      #TODO: Have some kind of query builder?
      POST "/#{app_id}/assets/search", query
    end

  end
end
