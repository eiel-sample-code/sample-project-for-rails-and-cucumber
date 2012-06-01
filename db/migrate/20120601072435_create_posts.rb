class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.string :comment, null: false

      t.timestamps
    end
  end
end
