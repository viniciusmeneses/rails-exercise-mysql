class CategoryRemoverWorker
  include Sidekiq::Worker

  def perform(category_id)
    category = Category.find(category_id)
    # raise "some exception"
    category.destroy
  end
end
