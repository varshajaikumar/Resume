class AddFidToProfessional < ActiveRecord::Migration
  def self.up
    add_column :professionals, :fid, :integer
  end

  def self.down
    remove_column :professionals, :fid
  end
end
