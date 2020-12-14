class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :image_url
      t.string :title
      t.string :description
      t.string :source

      t.timestamps
    end
  end
end
