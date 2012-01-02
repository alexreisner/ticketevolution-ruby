module Ticketevolution
  class Venue < Ticketevolution::Base
    attr_accessor :name, :address, :location, :updated_at, :url, :id, :upcoming_events
    
    def initialize(response)
      super(response)
      self.name            = @attrs_for_object["name"]
      self.address         = @attrs_for_object["address"]
      self.location        = @attrs_for_object["location"]
      self.updated_at      = @attrs_for_object["ipdated_at"]
      self.url             = @attrs_for_object["url"]
      self.id              = @attrs_for_object["id"]
      self.upcoming_events = @attrs_for_object["upcoming_events"]
    end
    
    class << self
      def list
        
      end
      
      def search(query)
        path               = "#{http_base}.ticketevolution.com/venues/search?q=#{query}"
        path_for_signature = "GET #{path[8..-1]}"
        response           = Ticketevolution::Base.get(path,path_for_signature)
      end
        
      # NOTE HANDLE NON FOUND VENUES
      def show(id)
        path               = "#{http_base}.ticketevolution.com/venues/#{id}?"
        path_for_signature = "GET #{path[8..-1]}"
        response           = Ticketevolution::Base.get(path,path_for_signature)
        Venue.new(response)
      end
      
      # Acutal api endpoints are matched 1-to-1 but for AR style convience AR type method naming is aliased into existance
      alias :find :show
    end
    
  end
end