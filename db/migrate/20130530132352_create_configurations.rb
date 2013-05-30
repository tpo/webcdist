class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
