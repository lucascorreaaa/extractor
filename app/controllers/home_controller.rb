class HomeController < ApplicationController
  def index
  	@dados = "Lucas Correa Silva"
  end

  def page_report
    @json = current_user.facebook.get_connection("509293502425881", "?fields=fan_count")
  end
end
