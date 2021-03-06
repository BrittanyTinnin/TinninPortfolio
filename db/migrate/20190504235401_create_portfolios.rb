class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :subtitle
      t.text :body
      t.text :thumb_image
      t.text :video
      t.text :source_code

      t.timestamps
    end
  end
end
