class AddNewIndices < ActiveRecord::Migration
  def self.up
	execute"alter table personals add constraint personal_unique unique(personal_id)"
	execute "ALTER TABLE professionals
	ADD CONSTRAINT professional_fk FOREIGN KEY (professional_id)
	REFERENCES personals (personal_id)
	ON DELETE CASCADE"
  end

  def self.down
  end
end
