class CreateMeanderings < ActiveRecord::Migration[6.0]
  def change
    create_table :meanderings do |t|
      t.text :content
      t.integer :type_id
      t.integer :user_id

      t.timestamps
    end
  end
end
