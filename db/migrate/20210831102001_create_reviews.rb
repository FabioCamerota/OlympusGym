class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    #drop_table :reviews #PER TESTING,POI CANCELLARE
    create_table :reviews do |t|
      t.integer :stelle
      t.text :comments
      t.references :user, null: false, foreign_key: true  #CAMBIATO DA COURSEGOER
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
