require 'rails_helper'

RSpec.describe "Enneagrams", type: :system do
  before do
    @enneagram = FactoryBot.build(:enneagram)
  end

  context '保存に成功するとき' do
    it '性格診断の保存が成功するとroot_pathに遷移する' do
        # 新規登録画面に遷移
        visit new_user_registration_path
        # ユーザー情報を入力
        fill_in 'ニックネーム', with: @enneagram.user.nickname
        fill_in 'メールアドレス', with: @enneagram.user.email
        fill_in 'パスワード 6文字以上の半角数字', with: @enneagram.user.password
        fill_in '同じパスワードを入力してください', with: @enneagram.user.password_confirmation
        #新規登録のボタンをクリックすると、enneagram/newに遷移することを確認
        click_on "新規登録"
        expect(current_path).to eq new_enneagram_path

        #チェックボックスにチェックをつけ、診断ボタンをクリック
        check "test-checked"
        click_on "診断する"

        #プルダウンからタイプを選択
        select "完璧主義者", from: "enneagram_result_id"

        #決定を押すとエニアグラムモデルのカウントが1上がることを確認
        expect{
          find('input[name="commit"]').click
        }.to change { Enneagram.count }.by(1)

        #root_pathに遷移することを確認
        expect(current_path).to eq root_path
    end
  end
  context '保存に失敗するとき' do
    it 'チェックボックスにチェックをせず保存しようとすると、性格診断ページに戻ってくる' do
        # 新規登録画面に遷移
        visit new_user_registration_path
        # ユーザー情報を入力
        fill_in 'ニックネーム', with: @enneagram.user.nickname
        fill_in 'メールアドレス', with: @enneagram.user.email
        fill_in 'パスワード 6文字以上の半角数字', with: @enneagram.user.password
        fill_in '同じパスワードを入力してください', with: @enneagram.user.password_confirmation
        #新規登録のボタンをクリックすると、enneagram/newに遷移することを確認
        click_on "新規登録"
        expect(current_path).to eq new_enneagram_path

        #チェックボックスにチェックをつけずに、診断ボタンをクリック
        uncheck "test-checked"
        click_on "診断する"

        #プルダウンからタイプを選択
        select "完璧主義者", from: "enneagram_result_id"

        #決定を押してもエニアグラムモデルのカウントが上がらないことを確認
        expect{
          find('input[name="commit"]').click
        }.to change { Enneagram.count }.by(0)

        #renderされ、性格診断ページに戻ってくることを確認
        expect(page).to have_content("決定")
    end

    it 'プルダウンを選択せず保存しようとすると、性格診断ページに戻ってくる' do
      # 新規登録画面に遷移
      visit new_user_registration_path
      # ユーザー情報を入力
      fill_in 'ニックネーム', with: @enneagram.user.nickname
      fill_in 'メールアドレス', with: @enneagram.user.email
      fill_in 'パスワード 6文字以上の半角数字', with: @enneagram.user.password
      fill_in '同じパスワードを入力してください', with: @enneagram.user.password_confirmation
      #新規登録のボタンをクリックすると、enneagram/newに遷移することを確認
      click_on "新規登録"
      expect(current_path).to eq new_enneagram_path

      #チェックボックスにチェックをつけ、診断ボタンをクリック
      check "test-checked"
      click_on "診断する"

      #プルダウンで何も選択しない
      select "--", from: "enneagram_result_id"

      #決定を押してもエニアグラムモデルのカウントが上がらないことを確認
      expect{
        find('input[name="commit"]').click
      }.to change { Enneagram.count }.by(0)

      #renderされ、性格診断ページに戻ってくることを確認
      expect(page).to have_content("決定")
    end

    it '何もせず、決定ボタンを押すと性格診断ページに戻ってくる' do
      # 新規登録画面に遷移
      visit new_user_registration_path
      # ユーザー情報を入力
      fill_in 'ニックネーム', with: @enneagram.user.nickname
      fill_in 'メールアドレス', with: @enneagram.user.email
      fill_in 'パスワード 6文字以上の半角数字', with: @enneagram.user.password
      fill_in '同じパスワードを入力してください', with: @enneagram.user.password_confirmation
      #新規登録のボタンをクリックすると、enneagram/newに遷移することを確認
      click_on "新規登録"
      expect(current_path).to eq new_enneagram_path

      #チェックボックスにチェックをつけ、診断ボタンをクリック
      uncheck "test-checked"
      click_on "診断する"

      #プルダウンで何も選択しない
      select "--", from: "enneagram_result_id"

      #決定を押してもエニアグラムモデルのカウントが上がらないことを確認
      expect{
        find('input[name="commit"]').click
      }.to change { Enneagram.count }.by(0)

      #renderされ、性格診断ページに戻ってくることを確認
      expect(page).to have_content("決定")
    end
  end
end
