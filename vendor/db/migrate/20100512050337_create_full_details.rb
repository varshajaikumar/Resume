class CreateFullDetails < ActiveRecord::Migration
  def self.up
    create_table :full_details do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :full_details
  end
end
