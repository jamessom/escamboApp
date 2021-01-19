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

    redirect_to backoffice_categories_path, notice: "Categoria #{@category.description} salva com sucesso!"
  end

  def edit; end

  def update; end

  private

  def params_category
    params.require(:category).permit(:description)
  end
end
