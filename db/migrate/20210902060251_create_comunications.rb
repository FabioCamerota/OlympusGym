class CreateComunications < ActiveRecord::Migration[6.1]
  def change
    #drop_table :comunications #PER TESTING,POI CANCELLARE
    create_table :comunications do |t|
      t.text 'description'
      t.timestamps
    end
  end
end
