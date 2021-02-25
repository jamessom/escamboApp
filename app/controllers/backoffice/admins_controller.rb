class Backoffice::AdminsController < BackofficeController
  before_action :set_admin, only: [:edit, :update, :destroy]

  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = AdminServices::CreateAdmin.call(params_admin)

    return render :new if @admin.errors.any?

    success_redirect(@admin.email)
  end

  def edit; end

  def update
    @admin = AdminServices::UpdateAdmin.call(@admin, params_admin)

    return render :edit if @admin.errors.any?

    success_redirect(@admin.email)
  end

  def destroy
    email = @admin.email
    @admin = AdminServices::DeleteAdmin.call(@admin)

    return render :new if @admin.errors.any?

    success_redirect(email)
  end

  private

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def params_admin
    params.require(:admin)
          .permit(:name, :email, :password, :password_confirmation)
  end

  def success_redirect(email)
    messages = {
      "create" => "Administrador #{email} salvo com sucesso!",
      "update" => "Administrador #{email} atualizado com sucesso!",
      "destroy" => "Administrador #{email} deletado com sucesso!"
    }

    redirect_to backoffice_admins_path, notice: messages[request[:action]]
  end
end
