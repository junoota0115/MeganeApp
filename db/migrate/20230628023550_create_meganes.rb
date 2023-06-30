class CreateMeganes < ActiveRecord::Migration[7.0]
  def change
    create_table :meganes do |t|
      t.string :title, null: false
      t.string :name, null: false
      t.text :content
      t.timestamps
    end
  end
end
