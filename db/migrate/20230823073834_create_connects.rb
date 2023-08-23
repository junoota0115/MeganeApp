class CreateConnects < ActiveRecord::Migration[7.0]
  def change
    create_table :connects do |t|
      t.string :name, null: false
      t.string :name_kana, null: false
      t.string :email, null: false
      t.string :tel_number, null: false
      t.integer :inquiry, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
