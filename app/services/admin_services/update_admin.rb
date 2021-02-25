module AdminServices
  class UpdateAdmin
    def self.call(admin, params)
      if params[:password].blank? && params[:password_confirmation].blank?
        params.delete(:password)
        params.delete(:password_confirmation)
      end

      admin.update!(params)

      admin
    rescue ActiveRecord::RecordInvalid => error
      error.message
    rescue ActiveRecord::RecordNotFound => error
      error.message
    end
  end
end