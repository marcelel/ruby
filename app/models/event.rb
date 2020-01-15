class Event < ApplicationRecord
    validates :name, :presence => true, :length => { :minimum => 6 }
    validates :email_address, :presence => true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :artist, :presence => true
    validates :description, :presence => true
    validates :price_low, :presence => true
    validates :price_high, :presence => true
    validates :price_low, :presence => true
end
