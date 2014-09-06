class CreatePortfolioLogos < ActiveRecord::Migration
  def change
    create_table :portfolio_logos do |t|
      t.string :src

      t.timestamps
    end
  end
end
