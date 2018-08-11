class User < ActiveRecord::Base
    has_many :rides
    has_many :attractions, through: :rides
    has_secure_password

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :password, presence: true
    validates :happiness, presence: true
    validates :nausea, presence: true
    validates :height, presence: true
    validates :tickets, presence: true

    def mood
        if nausea > happiness
           return "sad"
        else
            return "happy"
        end
    end
end
