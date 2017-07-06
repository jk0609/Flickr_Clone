class Tag < ApplicationRecord
  has_many :imagetags
  has_many :images, through: :imagetags

  def self.tag_duplicate_check(name)
    tag_id = 0
    Tag.all.each do |tag|
      if tag.name.gsub(/[^a-z," "]/i, '').downcase() == name.gsub(/[^a-z," "]/i, '').downcase()
        tag_id = tag.id
      end
    end
    tag_id
  end
end
