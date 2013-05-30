class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.text :name
      t.text :type

      t.timestamps
    end
  end
end
