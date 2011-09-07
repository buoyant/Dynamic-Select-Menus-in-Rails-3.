class CreateRegforms < ActiveRecord::Migration
  def self.up
    create_table :regforms do |t|
      t.string :name
      t.string :fathername
      t.string :email
      t.date :dob
      t.integer :district_id
      t.integer :state_id

      t.timestamps
    end
  end

  def self.down
    drop_table :regforms
  end
end
