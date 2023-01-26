class Farm < ActiveRecord::Base
    has_many :products
    has_many :reviews, through: :products
    validates :name, presence: true
    validates :rating, inclusion: 1..5 #numericality:{ greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

    def self.order_by(column_name)
        self.order("#{column_name} desc")
    end

    



end