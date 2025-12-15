module ApplicationHelper
  #helpers são codigos reaproveitaveis
  #vamos criar um
  def month_day_comma_year(datetime)
    datetime.strftime("%B %d, %Y")
  end
  #verifica se existe para poder renderizar, imagina que nao tenha nada, então não vai renderizar
  #helper criado para mostrar ou nao o dado
  def render_if(condition, template, record)
    render template, record if condition
  end
end
