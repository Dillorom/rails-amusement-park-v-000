class Ride < ActiveRecord::Base
    belongs_to :user
    belongs_to :attraction

    def take_ride
        if User.tickets < Attraction.tickets
            "Sorry. You do not have enough tickets to ride the #{attraction.name}."
        elsif 
            User.height > Attraction.min_height
                "Sorry. You are not tall enough to ride the #{attraction.name}."
        elsif
            User.tickets < Attraction.tickets && User.height > Attraction.min_height
            "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
        else
            User.tickets.update
            User.nausea.update
            User.happiness.update
        end
    end

end
