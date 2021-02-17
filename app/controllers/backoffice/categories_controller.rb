class Backoffice::CategoriesController < BackofficeController
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = CategoryServices::CreateCategory.call(params_category)

    return render :new if @category.errors.any?

    success_redirect(@category.description)
  end

  def edit; end

  def update
    @category = CategoryServices::UpdateCategory.call(@category, params_category)

    return render :new if @category.errors.any?

    success_redirect(@category.description)
  end

  def destroy
    description = @category.description
    @category = CategoryServices::DeleteCategory.call(@category)

    return render :new if @category.errors.any?

    success_redirect(description)
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def params_category
    params.require(:category).permit(:description)
  end

  def success_redirect(description)
    messages = {
      "create" => "Categoria #{description} cadastrada com sucesso!",
      "update" => "Categoria #{description} salva com sucesso!",
      "destroy" => "Categoria #{description} deletada com sucesso!"
    }

    redirect_to backoffice_categories_path, notice: messages[request[:action]]
  end
end
