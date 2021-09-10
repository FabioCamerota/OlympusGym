class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    #drop_table :reservations #PER TESTING,POI CANCELLARE
    create_table :reservations do |t|
      t.integer :prenotato
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
