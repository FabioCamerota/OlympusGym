class UsersAndCoursegoers < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :coursegoer_id
    add_column :reviews, :user_id, :reference
    drop_table :coursegoers
  end
end
