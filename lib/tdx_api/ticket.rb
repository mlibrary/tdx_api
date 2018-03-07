module TdxApi
  class Ticket
    include TdxApi::Connection

    attr_reader :id,
                :parent_id,
                :parent_title,
                :parent_class,
                :type_id,
                :type_name,
                :type_category_id,
                :type_category_name,
                :classification,
                :form_id,
                :form_name,
                :title,
                :description,
                :uri,
                :account_id,
                :account_name,
                :source_id,
                :source_name,
                :status_id,
                :status_name,
                :status_class,
                :impact_id,
                :impact_name,
                :urgency_id,
                :urgency_name,
                :priority_id,
                :priority_name,
                :priority_order,
                :sla_id,
                :sla_name,
                :is_sla_violated,
                :is_sla_respond_by_violated,
                :is_sla_resolve_by_violated,
                :respond_by_date,
                :resolve_by_date,
                :sla_begin_date,
                :is_on_hold,
                :placed_on_hold_date,
                :goes_off_hold_date,
                :created_date,
                :created_uid,
                :created_full_name,
                :created_email,
                :modified_date,
                :modified_uid,
                :modified_full_name,
                :requestor_name,
                :requestor_first_name,
                :requestor_last_name,
                :requestor_email,
                :requestor_phone,
                :requestor_uid,
                :actual_minutes,
                :estimated_minutes,
                :days_old,
                :start_date,
                :end_date,
                :responsible_uid,
                :responsible_full_name,
                :responsible_email,
                :responsible_group_id,
                :responsible_group_name,
                :responded_date,
                :responded_uid,
                :responded_full_name,
                :completed_date,
                :completed_uid,
                :completed_full_name,
                :reviewer_uid,
                :reviewer_full_name,
                :reviewer_email,
                :reviewing_group_id,
                :reviewing_group_name,
                :time_budget,
                :expenses_budget,
                :time_budget_used,
                :expenses_budget_used,
                :is_converted_to_task,
                :converted_to_task_date,
                :converted_to_task_uid,
                :converted_to_task_full_name,
                :task_project_id,
                :task_project_name,
                :task_plan_id,
                :task_plan_name,
                :task_id,
                :task_title,
                :task_start_date,
                :task_end_date,
                :task_percent_complete,
                :opportunity_id,
                :opportunity_name,
                :location_id,
                :location_name,
                :location_room_id,
                :location_room_name,
                :ref_code,
                :service_id,
                :service_name,
                :service_category_id,
                :service_category_name,
                :article_id,
                :article_subject,
                :article_status,
                :article_category_path_names,
                :app_id,
                :attributes,
                :attachments,
                :tasks,
                :notify

    def initialize(params)
      @id = params[:id]
      @parent_id = params[:parent_id]
      @parent_title = params[:parent_title]
      @parent_class = params[:parent_class]
      @type_id = params[:type_id]
      @type_name = params[:type_name]
      @type_category_id = params[:type_category_id]
      @type_category_name = params[:type_category_name]
      @classification = params[:classification]
      @form_id = params[:form_id]
      @form_name = params[:form_name]
      @title = params[:title]
      @description = params[:description]
      @uri = params[:uri]
      @account_id = params[:account_id]
      @account_name = params[:account_name]
      @source_id = params[:source_id]
      @source_name = params[:source_name]
      @status_id = params[:status_id]
      @status_name = params[:status_name]
      @status_class = params[:status_class]
      @impact_id = params[:impact_id]
      @impact_name = params[:impact_name]
      @urgency_id = params[:urgency_id]
      @urgency_name = params[:urgency_name]
      @priority_id = params[:priority_id]
      @priority_name = params[:priority_name]
      @priority_order = params[:priority_order]
      @sla_id = params[:sla_id]
      @sla_name = params[:sla_name]
      @is_sla_violated = params[:is_sla_violated]
      @is_sla_respond_by_violated = params[:is_sla_respond_by_violated]
      @is_sla_resolve_by_violated = params[:is_sla_resolve_by_violated]
      @respond_by_date = params[:respond_by_date]
      @resolve_by_date = params[:resolve_by_date]
      @sla_begin_date = params[:sla_begin_date]
      @is_on_hold = params[:is_on_hold]
      @placed_on_hold_date = params[:placed_on_hold_date]
      @goes_off_hold_date = params[:goes_off_hold_date]
      @created_date = params[:created_date]
      @created_uid = params[:created_uid]
      @created_full_name = params[:created_full_name]
      @created_email = params[:created_email]
      @modified_date = params[:modified_date]
      @modified_uid = params[:modified_uid]
      @modified_full_name = params[:modified_full_name]
      @requestor_name = params[:requestor_name]
      @requestor_first_name = params[:requestor_first_name]
      @requestor_last_name = params[:requestor_last_name]
      @requestor_email = params[:requestor_email]
      @requestor_phone = params[:requestor_phone]
      @requestor_uid = params[:requestor_uid]
      @actual_minutes = params[:actual_minutes]
      @estimated_minutes = params[:estimated_minutes]
      @days_old = params[:days_old]
      @start_date = params[:start_date]
      @end_date = params[:end_date]
      @responsible_uid = params[:responsible_uid]
      @responsible_full_name = params[:responsible_full_name]
      @responsible_email = params[:responsible_email]
      @responsible_group_id = params[:responsible_group_id]
      @responsible_group_name = params[:responsible_group_name]
      @responded_date = params[:responded_date]
      @responded_uid = params[:responded_uid]
      @responded_full_name = params[:responded_full_name]
      @completed_date = params[:completed_date]
      @completed_uid = params[:completed_uid]
      @completed_full_name = params[:completed_full_name]
      @reviewer_uid = params[:reviewer_uid]
      @reviewer_full_name = params[:reviewer_full_name]
      @reviewer_email = params[:reviewer_email]
      @reviewing_group_id = params[:reviewing_group_id]
      @reviewing_group_name = params[:reviewing_group_name]
      @time_budget = params[:time_budget]
      @expenses_budget = params[:expenses_budget]
      @time_budget_used = params[:time_budget_used]
      @expenses_budget_used = params[:expenses_budget_used]
      @is_converted_to_task = params[:is_converted_to_task]
      @converted_to_task_date = params[:converted_to_task_date]
      @converted_to_task_uid = params[:converted_to_task_uid]
      @converted_to_task_full_name = params[:converted_to_task_full_name]
      @task_project_id = params[:task_project_id]
      @task_project_name = params[:task_project_name]
      @task_plan_id = params[:task_plan_id]
      @task_plan_name = params[:task_plan_name]
      @task_id = params[:task_id]
      @task_title = params[:task_title]
      @task_start_date = params[:task_start_date]
      @task_end_date = params[:task_end_date]
      @task_percent_complete = params[:task_percent_complete]
      @opportunity_id = params[:opportunity_id]
      @opportunity_name = params[:opportunity_name]
      @location_id = params[:location_id]
      @location_name = params[:location_name]
      @location_room_id = params[:location_room_id]
      @location_room_name = params[:location_room_name]
      @ref_code = params[:ref_code]
      @service_id = params[:service_id]
      @service_name = params[:service_name]
      @service_category_id = params[:service_category_id]
      @service_category_name = params[:service_category_name]
      @article_id = params[:article_id]
      @article_subject = params[:article_subject]
      @article_status = params[:article_status]
      @article_category_path_names = params[:article_category_path_names]
      @app_id = params[:app_id]
      @attributes = params[:attributes]
      @attachments = params[:attachments]
      @tasks = params[:tasks]
      @notify = params[:notify]
    end

    # Removes an asset from ticket. 
    # Returns: Either success, fail
    # Rate limit: 60/60s
    def remove_asset(asset_id)
      DELETE base_url "/assets/#{asset_id}"
    end

    # Adds an asset to ticket. 
    # Returns: Either success, fail
    # Rate limit: 60/60s
    def add_asset(asset_id)
      POST base_url "/assets/#{asset_id}"
    end

    # Uploads an attachment to a ticket. The file should be included as part of the submission's form data. 
    # Returns: <Attachment>
    # Rate limit: 60/60s
    # Content-Type: multipart/form-data
    def upload_attachment(attachment)
      POST base_url "/attachments", attachment
    end

    # Gets the ticket contacts.
    # Returns: [<User>, ...]
    # Rate limit: 60/60s
    def contacts
      GET base_url "/contacts"
    end

    # A response message indicating whether or not the contact was successfully removed form the ticket. 
    # Rate limit: 60/60s
    def delete_contact(contact_uid)
      DELETE base_url "/contacts/#{contact_uid}"
    end

    # Adds a contact to ticket. 
    # Rate limit: 60/60s
    def add_contact(contact_uid)
      POST base_url "/contacts/#{contact_uid}"
    end

    # Gets the feed entries for a ticket. 
    # Returns: [<FeedEntry>, ..., ]
    # Rate limit: 60/60s
    def feed
      GET base_url "/feed"
    end

    # Updates a ticket. 
    # Returns: Either <FeedEntry>, fail
    # Rate limit: 60/60s
    def update(item_update)
      POST base_url("/feed"), item_update
    end

    # TODO: Add patch edit support
    # PATCH https://api.teamdynamix.com/TDWebApi/api/{appId}/tickets/{id}?notifyNewResponsible={notifyNewResponsible} 
    # Patches an existing ticket. This only suports patching the ticket itself and custom attributes. Other collections on the ticket are not supported. 
    # Returns: <Ticket>
    # Rate limit: 60/60s
    # def patch_edit
    # end

    # Edits an existing ticket. 
    # Returns: <Ticket>
    # Rate limit: 60/60s
    def edit(updated_ticket, notify_new_responsible: false)
      POST base_url("?notifyNewResponsible=#{notify_new_responsible}"), updated_ticket
    end

    private

    def base_url(endpoint)
      "/#{@app_id}/tickets/#{@id}" + endpoint.to_s
    end

  end
end
