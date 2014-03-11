class Vine < ActiveRecord::Base
  has_attached_file :thumb, styles: { thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :thumb, :content_type => /\Aimage\/.*\Z/

  validates :url, presence: true
  validates :caption, presence: true
  validates :thumb, presence: true
end
