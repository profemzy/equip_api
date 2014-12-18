class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :ip
      t.string :location
      t.string :status

      t.timestamps
    end
  end
end
