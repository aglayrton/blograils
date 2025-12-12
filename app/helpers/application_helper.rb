module ApplicationHelper
  #helpers são codigos reaproveitaveis
  #vamos criar um
  def month_day_comma_year(datetime)
    datetime.strftime("%B %d, %Y")
  end 
end
