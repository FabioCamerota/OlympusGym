class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    drop_table :courses #PER TESTING,POI CANCELLARE
    create_table :courses do |t|
      t.string 'nome'
      t.string 'giorno'
      t.string 'orario'
      t.string 'durata'
      t.text 'descrizione'
      t.timestamps
    end
  end
end
