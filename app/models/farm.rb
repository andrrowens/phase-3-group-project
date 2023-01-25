class Farm < ActiveRecord::Base
    has_many :products
    has_many :reviews, through: :products
    validates :name, presence: true

    def self.order_by(column_name)
        self.order("#{column_name} desc")
    end



end