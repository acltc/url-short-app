class Link < ActiveRecord::Base
  belongs_to :user

  validates :slug, :presence => true
  validates :slug, :uniqueness => true
  validates :target_url, :presence => true

  def strip_http!
    target_url.gsub!("http://", "")
    target_url.gsub!("https://", "")
  end
  
end
