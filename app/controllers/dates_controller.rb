class DatesController < ApplicationController
    


def new



end

def destroy

@evenement=Evenement.find(params[:id])
@evenement.destroy
redirect_to dates_path

end

def create
	
	@evenement=Evenement.new(evenement_params)
	@evenement.save
	redirect_to dates_path

end

def index

	@evenements=Evenement.all

end


private

	def evenement_params
		
		params.require(:evenement).permit(:nom,:date_texte, :lien, :ladate,:afficher)
	end

end
