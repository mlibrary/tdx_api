module TdxApi
  Ticket = Struct.new(
    :id,
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
  ) do

    def base_url(endpoint)
      "/#{@app_id}/tickets/#{@id}" + endpoint.to_s
      #asdfasdf
      #adfasdf
    end

    def remove_asset(asset_id)
      # Removes an asset from ticket. 
      # Returns: Either success, fail
      # Rate limit: 60/60s

      DELETE base_url "/assets/#{asset_id}"
    end

    def add_asset(asset_id)
      # Adds an asset to ticket. 
      # Returns: Either success, fail
      # Rate limit: 60/60s

      POST base_url "/assets/#{asset_id}"
    end

    def upload_attachment(attachment)
      # Uploads an attachment to a ticket. The file should be included as part of the submission's form data. 
      # Returns: <Attachment>
      # Rate limit: 60/60s

      # Content-Type: multipart/form-data

      POST base_url "/attachments"
    end

    def contacts
      # Gets the ticket contacts.
      # Returns: [<User>, ...]
      # Rate limit: 60/60s

      GET base_url "/contacts"
    end

    def delete_contact(contact_uid)
      # A response message indicating whether or not the contact was successfully removed form the ticket. 
      # Rate limit: 60/60s

      DELETE base_url "/contacts/#{contact_uid}"
    end

    def add_contact(contact_uid)
      # Adds a contact to ticket. 
      # Rate limit: 60/60s

      POST base_url "/contacts/#{contact_uid}"
    end

    def feed
      # Gets the feed entries for a ticket. 
      # Returns: [<FeedEntry>, ..., ]
      # Rate limit: 60/60s

      GET base_url "/feed"
    end

    def update(item_update)
      # Updates a ticket. 
      # Returns: Either <FeedEntry>, fail
      # Rate limit: 60/60s

      POST base_url("/feed"), item_update
    end

    def patch_edit
      # PATCH https://api.teamdynamix.com/TDWebApi/api/{appId}/tickets/{id}?notifyNewResponsible={notifyNewResponsible} 
      # Patches an existing ticket. This only suports patching the ticket itself and custom attributes. Other collections on the ticket are not supported. 
      # Returns: <Ticket>
      # Rate limit: 60/60s
    end

    def edit(updated_ticket, notify_new_responsible: false)
      # Edits an existing ticket. 
      # Returns: <Ticket>
      # Rate limit: 60/60s

      POST base_url("?notifyNewResponsible=#{notify_new_responsible}"), updated_ticket
    end
  end
end
