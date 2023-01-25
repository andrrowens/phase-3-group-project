class Farm < ActiveRecord::Base
    has_many :products
    validates :name, presence: true

    def self.order_by(column_name)
        self.order("#{column_name} desc")
    end



end