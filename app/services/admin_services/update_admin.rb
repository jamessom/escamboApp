module AdminServices
  class UpdateAdmin
    def self.call(admin, params)
      admin.update!(params)

      admin
    rescue ActiveRecord::RecordInvalid => error
      error.message
    rescue ActiveRecord::RecordNotFound => error
      error.message
    end
  end
end