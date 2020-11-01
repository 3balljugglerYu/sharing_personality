class Enneagram < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to_active_hash :result

  with_options numericality: { other_than: 1 } do
    validates :result_id
  end

  with_options presence: true do
    validates :perfectionist_sum
    validates :giver_sum
    validates :achiever_sum
    validates :individualist_sum
    validates :investigator_sum
    validates :skeptic_sum
    validates :enthusiast_sum
    validates :challenger_sum
    validates :peacemaker_sum
  end
end
