module TdxApi
  class Asset
    include TdxApi::Connection

    attr_reader :id,
                :app_id,
                :app_name,
                :product_model_id,
                :product_model_name,
                :manufacturer_id,
                :manufacturer_name,
                :supplier_id,
                :supplier_name,
                :status_id,
                :status_name,
                :location_id,
                :location_name,
                :location_room_id,
                :location_room_name,
                :tag,
                :serial_number,
                :name,
                :purchase_cost,
                :acquisition_date,
                :expected_replacement_date,
                :requesting_customer_id,
                :requesting_customer_name,
                :requesting_department_id,
                :requesting_department_name,
                :owning_customer_id,
                :owning_customer_name,
                :owning_department_id,
                :owning_department_name,
                :parent_id,
                :parent_serial_number,
                :parent_name,
                :parent_tag,
                :maintenance_schedule_id,
                :maintenance_schedule_name,
                :configuration_item_id,
                :created_date,
                :created_uid,
                :created_full_name,
                :modified_date,
                :modified_uid,
                :modified_full_name,
                :external_id,
                :external_source_id,
                :external_source_name,
                :attributes,
                :attachments,
                :uri

    def initialize(params)
      @id = params[:id]
      @app_id = params[:app_id]
      @app_name = params[:app_name]
      @product_model_id = params[:product_model_id]
      @product_model_name = params[:product_model_name]
      @manufacturer_id = params[:manufacturer_id]
      @manufacturer_name = params[:manufacturer_name]
      @supplier_id = params[:supplier_id]
      @supplier_name = params[:supplier_name]
      @status_id = params[:status_id]
      @status_name = params[:status_name]
      @location_id = params[:location_id]
      @location_name = params[:location_name]
      @location_room_id = params[:location_room_id]
      @location_room_name = params[:location_room_name]
      @tag = params[:tag]
      @serial_number = params[:serial_number]
      @name = params[:name]
      @purchase_cost = params[:purchase_cost]
      @acquisition_date = params[:acquisition_date]
      @expected_replacement_date = params[:expected_replacement_date]
      @requesting_customer_id = params[:requesting_customer_id]
      @requesting_customer_name = params[:requesting_customer_name]
      @requesting_department_id = params[:requesting_department_id]
      @requesting_department_name = params[:requesting_department_name]
      @owning_customer_id = params[:owning_customer_id]
      @owning_customer_name = params[:owning_customer_name]
      @owning_department_id = params[:owning_department_id]
      @owning_department_name = params[:owning_department_name]
      @parent_id = params[:parent_id]
      @parent_serial_number = params[:parent_serial_number]
      @parent_name = params[:parent_name]
      @parent_tag = params[:parent_tag]
      @maintenance_schedule_id = params[:maintenance_schedule_id]
      @maintenance_schedule_name = params[:maintenance_schedule_name]
      @configuration_item_id = params[:configuration_item_id]
      @created_date = params[:created_date]
      @created_uid = params[:created_uid]
      @created_full_name = params[:created_full_name]
      @modified_date = params[:modified_date]
      @modified_uid = params[:modified_uid]
      @modified_full_name = params[:modified_full_name]
      @external_id = params[:external_id]
      @external_source_id = params[:external_source_id]
      @external_source_name = params[:external_source_name]
      @attributes = params[:attributes]
      @attachments = params[:attachments]
      @uri = params[:uri]
    end


    
  end
end