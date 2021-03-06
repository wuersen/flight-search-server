class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :seat_code
      t.references :user, foreign_key: true
      t.references :flight, foreign_key: true

      t.timestamps
    end
  end
end
