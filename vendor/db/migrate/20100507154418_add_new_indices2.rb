class AddNewIndices2 < ActiveRecord::Migration
  def self.up
	
	execute "ALTER TABLE professionals
	ADD CONSTRAINT professional_fk1 FOREIGN KEY (id)
	REFERENCES personals (id)
	ON DELETE CASCADE"
  end

  def self.down
  end
end
