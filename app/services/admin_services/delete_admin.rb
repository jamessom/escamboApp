module AdminServices
  class DeleteAdmin
    def self.call(admin)
      admin.destroy
    rescue ActiveRecord::RecordNotFound => error
      error.message
    end
  end
end