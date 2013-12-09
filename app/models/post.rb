class Post < ActiveRecord::Base
	validates_presence_of :title, :body, :publish_date, :user_id
	belongs_to :user
	has_and_belongs_to_many :categories
	scope :published, lambda { where (['publish_date <=?', Date.today])}
	scope :by_user_id, lambda { |uid| where(:user_id => uid)}
	scope :by_category_id, lambda { |cid| joins(:categories).where(['categories.id = ?', cid])}
end
