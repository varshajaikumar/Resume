class AddColumnsProfessionalToPersonal < ActiveRecord::Migration
  def self.up
	add_column :personals, :twelfth_percent, :decimal, {:precision => 5, :scale => 2}
	add_column :personals, :tenth_percent, :decimal, {:precision => 5, :scale => 2}
	add_column :personals, :degree, :string
	add_column :personals, :current_jobstatus, :string
  end

  def self.down
  end
end
