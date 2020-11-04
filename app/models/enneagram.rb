class Enneagram < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to_active_hash :result

  validate :all_count

  def all_count
    if perfectionist_sum == 0 && giver_sum == 0 && giver_sum == 0 && achiever_sum == 0 &&
      individualist_sum == 0 && investigator_sum == 0 && skeptic_sum == 0 &&
      enthusiast_sum == 0 && challenger_sum == 0 && peacemaker_sum == 0
      errors.add(:base, "全ての値が０です")
    end
  end

  with_options numericality: { other_than: 1, message: 'Error　自分自身のタイプを選んで下さい' } do
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

  with_options numericality: { less_than_or_equal_to: 10, message: '文字もしくは11以上の数値が入力されています' } do
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
