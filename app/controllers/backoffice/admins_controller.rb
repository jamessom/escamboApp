class Backoffice::AdminsController < BackofficeController
  before_action :set_admin, only: [:edit, :update]

  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params_admin)

    unless @admin.save
      return render :new
    end

    success_message = "Administrador #{@admin.email} salvo com sucesso!"

    redirect_to backoffice_admins_path, notice: success_message
  end

  def edit; end

  def update
    if params_admin[:password].blank? && params_admin[:password_confirmation].blank?
      params[:admin].delete(:password)
      params[:admin].delete(:password_confirmation)
    end

    unless @admin.update(params_admin)
      return render :edit
    end

    success_message = "Administrador #{@admin.email} atualizado com sucesso!"

    redirect_to backoffice_admins_path, notice: success_message
  end

  private

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def params_admin
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
