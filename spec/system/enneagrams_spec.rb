require 'rails_helper'

RSpec.describe 'Enneagrams', type: :system do
  before do
    @user = FactoryBot.create(:user)
  end

  context '保存に成功するとき' do
    it '性格診断の保存が成功するとroot_pathに遷移する' do
      # ログインする
      visit new_user_session_path
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      click_on 'ログイン'

      # 性格診断をしていないユーザーであることを確認
      expect(Enneagram.find_by(user_id: @user.id).nil?).to eq true
      # 性格診断をしていないユーザーは、診断ページに遷移されることを確認
      expect(current_path).to eq new_enneagram_path

      # チェックボックスにチェックをつけ、診断ボタンをクリック
      check 'test-checked'
      click_on '診断する'

      # プルダウンからタイプを選択
      select '完璧主義者', from: 'enneagram_result_id'

      # 決定を押すとエニアグラムモデルのカウントが1上がることを確認
      expect do
        find('input[name="commit"]').click
      end.to change { Enneagram.count }.by(1)

      # root_pathに遷移することを確認
      expect(current_path).to eq root_path
    end
  end

  context '保存に失敗するとき' do
    it 'チェックボックスにチェックをせず保存しようとすると、性格診断ページに戻ってくる' do
      # ログインする
      visit new_user_session_path
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      click_on 'ログイン'

      # 性格診断をしていないユーザーであることを確認
      expect(Enneagram.find_by(user_id: @user.id).nil?).to eq true
      # 性格診断をしていないユーザーは、診断ページに遷移されることを確認
      expect(current_path).to eq new_enneagram_path

      # チェックボックスにチェックをつけずに、診断ボタンをクリック
      uncheck 'test-checked'
      click_on '診断する'

      # プルダウンからタイプを選択
      select '完璧主義者', from: 'enneagram_result_id'

      # 決定を押してもエニアグラムモデルのカウントが上がらないことを確認
      expect do
        find('input[name="commit"]').click
      end.to change { Enneagram.count }.by(0)

      # renderされ、性格診断ページに戻ってくることを確認
      expect(page).to have_content('決定')
    end

    it 'プルダウンを選択せず保存しようとすると、性格診断ページに戻ってくる' do
      # ログインする
      visit new_user_session_path
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      click_on 'ログイン'

      # 性格診断をしていないユーザーであることを確認
      expect(Enneagram.find_by(user_id: @user.id).nil?).to eq true
      # 性格診断をしていないユーザーは、診断ページに遷移されることを確認
      expect(current_path).to eq new_enneagram_path

      # チェックボックスにチェックをつけ、診断ボタンをクリック
      check 'test-checked'
      click_on '診断する'

      # プルダウンで何も選択しない
      select '--', from: 'enneagram_result_id'

      # 決定を押してもエニアグラムモデルのカウントが上がらないことを確認
      expect do
        find('input[name="commit"]').click
      end.to change { Enneagram.count }.by(0)

      # renderされ、性格診断ページに戻ってくることを確認
      expect(page).to have_content('決定')
    end

    it '何もせず、決定ボタンを押すと性格診断ページに戻ってくる' do
      # ログインする
      visit new_user_session_path
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      click_on 'ログイン'

      # 性格診断をしていないユーザーは、診断ページに遷移されることを確認
      expect(current_path).to eq new_enneagram_path

      # チェックボックスにチェックをつけ、診断ボタンをクリック
      uncheck 'test-checked'
      click_on '診断する'

      # プルダウンで何も選択しない
      select '--', from: 'enneagram_result_id'

      # 決定を押してもエニアグラムモデルのカウントが上がらないことを確認
      expect do
        find('input[name="commit"]').click
      end.to change { Enneagram.count }.by(0)

      # renderされ、性格診断ページに戻ってくることを確認
      expect(page).to have_content('決定')
    end
  end
end
