class AddMainImageToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :main_image, :text
  end
end