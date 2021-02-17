module CategoryServices
  class CreateCategory
    def self.call(params)
      category = Category.new(params)

      if category.valid?
        category.save!
      end

      category
    end
  end
end