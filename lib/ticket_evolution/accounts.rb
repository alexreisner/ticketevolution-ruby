module TicketEvolution
  class Accounts < Endpoint
    include TicketEvolution::Modules::List
    include TicketEvolution::Modules::Show
  end
end
