require 'csv'

class HomeController < ApplicationController
  def index
  	@dados = "Lucas Correa Silva"
  end

  def page_report
    @page_id = params[:page_id]
    @json = current_user.facebook.get_connection(1219532218116699, "/feed?fields=message, updated_time, id&limit=9999999")
    @csv_string = CSV.generate do |csv|
      csv << ["message","updated_time","id"]
      @json.each do |hash|
        csv << [hash["message"], hash["updated_time"], hash["id"]]
      end
    end
    send_data @csv_string, type: 'text/csv; charset=utf-8; header=present', disposition: "attachment; filename=page_report.csv"
    #@json = current_user.facebook.get_connection(@page_id, "?fields=fan_count,name")
  end
end
