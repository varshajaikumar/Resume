class RemoveColumn < ActiveRecord::Migration
  def self.up
	
	remove_column :personals, :personal_id
	remove_column :professionals, :professional_id
  end

  def self.down
  end
end
