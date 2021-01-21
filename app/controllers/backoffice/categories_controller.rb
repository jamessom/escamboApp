class Backoffice::CategoriesController < BackofficeController
  before_action :set_category, only: [:edit, :update]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params_category)

    unless @category.save
      return render :new
    end

    success_message = "Categoria #{@category.description} salva com sucesso!"

    redirect_to backoffice_categories_path, notice: success_message
  end

  def edit; end

  def update
    unless @category.update(params_category)
      return render :edit
    end

    success_message = "Categoria #{@category.description} atualizada com sucesso!"

    redirect_to backoffice_categories_path, notice: success_message
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def params_category
    params.require(:category).permit(:description)
  end
end
