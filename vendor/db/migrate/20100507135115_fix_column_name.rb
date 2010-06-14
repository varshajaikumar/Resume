class FixColumnName < ActiveRecord::Migration
  def self.up
	rename_column :personals, :pid, :personal_id
	rename_column :professionals, :fid, :professional_id
  end

  def self.down
  end
end
