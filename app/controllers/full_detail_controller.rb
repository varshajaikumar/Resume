class FullDetailController < ApplicationController
  def index
	@personals = Personal.find_full_details
	@professionals = Professional.find_full_details
  def add_new
	@personals = Personal.new
  end
  end

end
