class CreateWebSources < ActiveRecord::Migration[7.2]
  def change
    create_table :web_sources do |t|
      t.string :url
      t.string :description
      t.datetime :last_scanned_at
      t.string :status

      t.timestamps
    end
  end
end
