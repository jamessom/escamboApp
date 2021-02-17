module CategoryServices
  class DeleteCategory
    def self.call(category)
      category.destroy
    rescue ActiveRecord::RecordNotFound => error
      error.message
    end
  end
end