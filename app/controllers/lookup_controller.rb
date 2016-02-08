class LookupController < ApplicationController
  def search
  end

  def results
  	if params[:name]!= nil
  	nam_arr = params[:name].titleize.split
  	@results = Contact.where(first_name: nam_arr[0], last_name: nam_arr[1], user_id: current_user.id)

  elsif params[:city] != nil
  	@results = Contract.where(city: params[:city].titleize)
  end
end
end
