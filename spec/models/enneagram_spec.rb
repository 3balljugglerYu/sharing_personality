require 'rails_helper'

describe Enneagram do
  before do
    @enneagram = FactoryBot.build(:enneagram)
  end

  describe '性格診断実装' do
    context '性格診断の保存うまく保存できる時' do
      it '全ての入力項目が存在すれば登録できる' do
        expect(@enneagram).to be_valid
      end
    end

    context '性格診断の保存ががうまくいかないとき' do
      it '全ての入力項目が０の時' do
        @enneagram.perfectionist_sum  = 0
        @enneagram.giver_sum          = 0
        @enneagram.achiever_sum       = 0
        @enneagram.individualist_sum  = 0
        @enneagram.investigator_sum   = 0
        @enneagram.skeptic_sum        = 0
        @enneagram.enthusiast_sum     = 0
        @enneagram.challenger_sum     = 0
        @enneagram.peacemaker_sum     = 0
        @enneagram.valid?
        expect(@enneagram.errors.full_messages).to include('全ての値が０です')
      end
      it '自身のタイプを選択していない時' do
        @enneagram.result_id = 1
        @enneagram.valid?
        expect(@enneagram.errors.full_messages).to include('Result Error　自分自身のタイプを選んで下さい')
      end
    end
  end
end
