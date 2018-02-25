module TdxApi
  class TicketApp
    attr_reader :app_id

    def initialize(app_id: app_id)
      @app_id = app_id
    end

    def ticket(id)
      # Return ticket with that id
      # Rate limit: 60/60s

      tix = GET "/#{@app_id}/tickets/#{id}"
      Ticket.new(tix)
    end

    def search(query)
      # Gets a list of tickets. 
      # Returns: [<Ticket>, ...]
      # Rate limit: 20/60s

      POST "/#{app_id}/tickets/search", query
    end

    def create(ticket, enable_notify_reviewer:, notify_requestor:, notify_responsible:, allow_requestor_creation:)
      # Creates a ticket. 
      # Returns: Either <Ticket>, fail
      # Rate limit: 120/60s

      POST "/#{app_id}/tickets?EnableNotifyReviewer=#{enable_notify_reviewer}&NotifyRequestor=#{notify_requestor}&NotifyResponsible=#{notify_responsible}&AllowRequestorCreation=#{allow_requestor_creation}", ticket
    end

    def eligible_assignments(search_text)
      # Gets a list of eligible assignments for the ticketing application. 
      # Returns: [<Assignee>, ...]
      # Rate limit: 60/60s

      GET "#{app_id}/tickets/resources?searchText=#{search_text}"
    end
  end
end