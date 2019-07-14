class Lesson < ApplicationRecord
  belongs_to :section
  mount_uploader :video, VideoUploader

  include RankedModel
  ranks :row_order, with_same: :section_id

  validates :title, presence: true, length: { minimum: 4 }
  validates :subtitle, presence: true, length: { minimum: 4 }

end
