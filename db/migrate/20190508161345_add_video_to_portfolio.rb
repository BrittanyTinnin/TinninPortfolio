class AddVideoToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :video, :text
  end
end
