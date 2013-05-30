class CreateCdistTypes < ActiveRecord::Migration
  def change
    create_table :cdist_types do |t|
      t.text :name
      t.text :description
      t.text :readme

      t.timestamps
    end
  end
end
