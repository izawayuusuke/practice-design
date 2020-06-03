class Picture < ApplicationRecord
  has_attached_file :photo,
                    styles: { medium: "300×300>", thumb: "100×100>" },
                    path: "#{Rails.root}/app/assets/images/:filename"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
