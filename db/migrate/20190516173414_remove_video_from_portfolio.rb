class RemoveVideoFromPortfolio < ActiveRecord::Migration[5.2]
  def change
    remove_column :portfolios, :video, :text
  end
end
