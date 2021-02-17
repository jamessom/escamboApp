module AdminServices
  class CreateAdmin
    def self.call(params)
      admin = Admin.new(params)

      if admin.valid?
        admin.save!
      end

      admin
    end
  end
end