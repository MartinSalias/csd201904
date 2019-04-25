require 'sinatra'

get '/' do
	erb :form    
end

post '/buscar' do
	@resultado = "No encontrada"
	@letra = params[:campo]
	
	if @letra == "B"
		@resultado = "Encontrada"
	end
		
	erb :form    
end
