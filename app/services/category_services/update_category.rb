module CategoryServices
  class UpdateCategory
    def self.call(category, params)
      category.update!(params)

      category
    rescue ActiveRecord::RecordInvalid => error
      error.message
    rescue ActiveRecord::RecordNotFound => error
      error.message
    end
  end
end