class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :summary
      t.text :description
      t.text :image
      t.string :technology

      t.timestamps
    end
  end
end
