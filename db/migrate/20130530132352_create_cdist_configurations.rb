class CreateCdistConfigurations < ActiveRecord::Migration
  def change
    create_table :cdist_configurations do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
