class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :summary
      t.text :description
      t.string :site_url
      t.string :realise
      t.string :name

      t.timestamps
    end
  end
end
