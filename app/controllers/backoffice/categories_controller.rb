class Backoffice::CategoriesController < BackofficeController
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

  def update; end

  private

  def params_category
    params.require(:category).permit(:description)
  end
end
