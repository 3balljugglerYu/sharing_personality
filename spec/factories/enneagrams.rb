FactoryBot.define do
  factory :enneagram do
    result_id            { 2 }
    perfectionist_sum    { 1 }
    giver_sum            { 1 }
    achiever_sum         { 1 }
    individualist_sum    { 1 }
    investigator_sum     { 1 }
    skeptic_sum          { 1 }
    enthusiast_sum       { 1 }
    challenger_sum       { 1 }
    peacemaker_sum       { 1 }
    association :user
  end
end
