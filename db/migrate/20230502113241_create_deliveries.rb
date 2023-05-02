class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.date :arrive_on
      t.string :description
      t.string :details
      t.string :status

      t.timestamps
    end
  end
end
