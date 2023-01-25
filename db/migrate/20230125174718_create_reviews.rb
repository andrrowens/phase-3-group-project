class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :Reviews do |t|
      t.integer :farm_id
      t.string :review

    end
  end
end
