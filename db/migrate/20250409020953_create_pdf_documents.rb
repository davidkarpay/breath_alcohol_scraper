class CreatePdfDocuments < ActiveRecord::Migration[7.2]
  def change
    create_table :pdf_documents do |t|
      t.references :source_url, null: false, foreign_key: true
      t.string :filename
      t.string :file_path
      t.string :status
      t.datetime :downloaded_at
      t.integer :file_size

      t.timestamps
    end
  end
end
