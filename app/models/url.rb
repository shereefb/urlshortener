class Url < ActiveRecord::Base
  belongs_to :user
  
  after_create :make_short_url
  
  private
  
  def make_short_url
    self.update_attribute(:short, short_url_from_id(self.id))
  end
  
  def short_url_from_id(id)
    id
  end
end
