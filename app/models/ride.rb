class Ride < ActiveRecord::Base
    belongs_to :users
    belongs_to :attractions

    def take_ride
        if User.ticket < Attraction.ticket
            "Sorry. You do not have enough tickets to ride the #{attraction.name}."
        elsif 
            User.height > Attraction.min_height
                "Sorry. You are not tall enough to ride the #{attraction.name}."
        elsif
            User.ticket< Attraction.ticket && User.height > Attraction.min_height
            "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
        else
            User.tickets.update
            User.nausea.update
            User.happiness.update
        end
    end

end
