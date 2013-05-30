class CreateCdistObjects < ActiveRecord::Migration
  def change
    create_table :cdist_objects do |t|
      t.integer :cdist_type_id

      t.timestamps
    end
  end
end
