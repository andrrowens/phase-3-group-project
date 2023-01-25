class Product < ActiveRecord::Base
    has_many :purchases
    has_many :reviews
    belongs_to :farm  
end