class Professional < ActiveRecord::Base
	has_one :personal
        def self.find_full_details
  		find(:all)
	end
	
	validates_presence_of :current_jobstatus, :degree
	validates_numericality_of :twelfth_percent,:tenth_percent
	validates_inclusion_of :current_jobstatus, :in => %w(Jobless Employeed), :message => "should be either Jobless/Employeed"  
	


end
