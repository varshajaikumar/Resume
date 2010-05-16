class Personal < ActiveRecord::Base
	belongs_to :professional
	def self.find_full_details
 		find(:all)
	end
	
	
	validates_length_of :name, :maximum => 50, :too_long => "must have at most {{count}} letters" 
	validates_length_of :gender, :is => 1
	#validates_length_of :pin, :is => 6
 	#validates_length_of :mob, :is => 10
	validates_inclusion_of :gender, :in => %w(M F), :message => "should be either M/F"
	validates_numericality_of :pin
	validates_numericality_of :mob
        validates_presence_of :name
	
       

end
