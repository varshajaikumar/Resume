class CreateProfessionals < ActiveRecord::Migration
  def self.up
    create_table :professionals do |t|
       
      t.decimal :twelfth_percent
      t.decimal :tenth_percent
      t.string :degree
      t.string :current_jobstatus

      t.timestamps
    end
  end

  def self.down
    drop_table :professionals
  end
end
