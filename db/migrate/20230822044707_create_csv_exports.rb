class CreateCsvExports < ActiveRecord::Migration[7.0]
  def change
    create_table :csv_exports do |t|

      t.timestamps
    end
  end
end
