class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.text :name
      t.integer :ssh_port

      t.timestamps
    end
  end
end
