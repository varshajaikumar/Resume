class FullDetailsController < ApplicationController
  def index
	@personals = Personal.find_full_details
	@professionals = Professional.find_full_details
  end

end
