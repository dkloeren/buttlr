class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true
      t.date :start
      t.date :end
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
