class CreateComunications < ActiveRecord::Migration[6.1]
  def change
    create_table :comunications do |t|
      t.text 'description'
      t.timestamps
    end
  end
end
