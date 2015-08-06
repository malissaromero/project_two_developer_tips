class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.references :post, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
    end
  end
end
