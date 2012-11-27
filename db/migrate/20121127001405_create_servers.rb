class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.integer :u_size

      t.timestamps
    end
  end
end
