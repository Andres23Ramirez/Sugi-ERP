class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_filter :set_admin_locale
	
  	def set_admin_locale
  		I18n.locale = :es
	end
end
