require 'twitter'

class StudentsController < ApplicationController

	
  

  def index 
  end 

  def show 
    @id = params[:id]
    @student = Unirest.get("https://sheltered-chamber-15774.herokuapp.com/api/v1/students/#{@id}.json").body
    @skills = Unirest.get("https://sheltered-chamber-15774.herokuapp.com/api/v1/skills.json").body
  end

  def twitter
  	
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key = "lDq7plTDJ0KS4DoEaaJWJilVj"
		  config.consumer_secret = "h9mD0TXuufCrg4vFxiMovbVplFGVjHraEAx4q5mMBrmOT0fLaN"
		  config.access_token = 	"2437598774-ODTjuT0g5gTCNtH2M5M3pNvTnCQDNvPc9YEGsfe"
		  config.access_token_secret = 	"TOSCK4O7uLyCF4M46xNFZFtqu8GnrbaampXPXh1wnTzeH"
		end
  	
    @tweets = client.user_timeline("ladysappe")
    @id = params[:id]
    @student = Unirest.get("https://sheltered-chamber-15774.herokuapp.com/api/v1/students/#{@id}.json").body
  	
  	
  end

end
