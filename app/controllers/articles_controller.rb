class ArticlesController < ApplicationController

  before_action :set_params, only:[:edit, :update, :show, :destroy] 

  def index
    #destaques (vou trazer os 3 ultimos como se fosse destaques)
    @high_lights = Article.desc_order.limit(3)
    

    # se tiver um parametro chamado page vai ser usado caso nao seja sera o 1
    #na url que vai ter o page
    current_page = (params[:page] || 1).to_i

    #Vou pegar os 3 primeiros como vetor (usando pluck) o join traz com formato string e com a virgula adicionada
    high_lights_ids = @high_lights.pluck(:id).join(',')

    
    # paginacao dentro do page fica a quantidade de pagina
    @articles = Article
    .whitout_high_lights(high_lights_ids)
    .desc_order
    #vou buscar todos que nao sejam esses ids (do destaque)
    .page(current_page).per(2)
  end

  def show
  end

  def new
    @article = Article.new
  end


  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
  
  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  def set_params
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :category_id)
  end
end
