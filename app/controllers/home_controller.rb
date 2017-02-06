class HomeController < ApplicationController
  def index
  	@dados = "Lucas Correa Silva"
  end

  def page_report
    @page_id = params[:page_id]
    @json = current_user.facebook.get_connection(@page_id, "?fields=fan_count,name")
  end
end
