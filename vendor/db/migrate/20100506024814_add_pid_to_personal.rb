class AddPidToPersonal < ActiveRecord::Migration
  def self.up
    add_column :personals, :pid, :integer
  end

  def self.down
    remove_column :personals, :pid
  end
end
