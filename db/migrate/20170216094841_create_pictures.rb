class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :file
      t.references :article, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
