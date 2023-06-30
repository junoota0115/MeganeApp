class CreateMeganes < ActiveRecord::Migration[7.0]
  def change
    create_table :meganes do |t|

      t.timestamps
    end
  end
end
