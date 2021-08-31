class CreateCoursegoers < ActiveRecord::Migration[6.1]
  def change
    create_table :coursegoers do |t|
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
