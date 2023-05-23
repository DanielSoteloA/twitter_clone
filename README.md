# README

Desarrollo Ruby on Rails para emprendimientos de tipo Startup

Prueba - Introducción a desarrollo de aplicaciones con Ruby on Rails

* Author
    * Daniel Sotelo A.

* ruby version
    * ruby 3.1.1p18 (2022-02-18 revision 53f5fc4236) [x86_64-linux]
	* Rails 7.0.4.3
	* psql (PostgreSQL) 12.14

* Instalación
	* rails new twitter_clone -d postgresql
	* cd twitter_clone
	* bundle install
	* rails db:create
	* rails g scaffold Tweet UserName:string Description:text
	* rails db:migrate
	* gem install will_paginate
	* bundle add will_paginate

* Modificaciones
	* routes.rb
		- get 'tweets/index'
  		- root "tweets#index"
	* models/tweet.rb
		validates :UserName, :Description, presence: { message: "Campo Obligado"}
		[para evitar ingreso de registros sin informacion]
	* tweets_controller.rb
		- Metodo index
		def index
			if params[:busqueda].present?
			@q = params[:busqueda].downcase
			@tweets = Tweet.where(UserName: @q).paginate(page: params[:page], per_page: 10)      
			else
			@tweets = Tweet.paginate(page: params[:page], per_page: 10)
			end
		end
		- Busqueda por UserName en minusculas, (texto exacto) [No se usa Gema]
	* Vistas uso de bootstrap 5.3.0

* Despliegue en pagina http://localhost:3000/