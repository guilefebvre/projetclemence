class IndexController < ApplicationController
    
   def accueil
   	
   	@prochaines_dates=Evenement.all

	end

	def photos
	@prochaines_dates=Evenement.all
	end

	def show_messages
	@prochaines_dates=Evenement.all
	@message=Message.all
	end
	
	def effacer_messages
	@message=Message.find(params[:id])
	@message.destroy
	redirect_to show_path
	
	end


	def contact

	@prochaines_dates=Evenement.all
	end
	
	def envoi_message
		
		@message=Message.new(msg_params)
		@message.save
		redirect_to show_path
	
	end
	
	

	
private

	def msg_params
		
		params.require(:msg).permit(:nom,:prenom, :message, :mail)
	end
	
end
