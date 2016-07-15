class ContactosController < ApplicationController
	def new
	end

	def create
		@contacto = Contacto.new(contacto_params)
		@contacto.save
		redirect_to @contacto
	end

	def show
		@contacto = Contacto.find(params[:id])
	end

	def index
		@contactos = Contacto.all
	end

	private
		def contacto_params
			params.require(:contacto).permit(:nombres,:apellidos,:telefono,:direccion,:mail)
		end
end
