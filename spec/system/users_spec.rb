require 'rails_helper'

RSpec.describe 'ユーザー新規登録', type: :system do
  before do
    @user = FactoryBot.build(:user)
  end
  context 'ユーザー新規登録ができるとき' do
    it '正しい情報を入力すればユーザー新規登録ができ、enneagram/newに移動する' do
      # トップページに移動しようするとログイン画面に遷移
      visit root_path
      expect(page).to have_content('新規登録はこちらです。')
      # 新規登録ページに遷移
      click_on '新規登録はこちらです。'
      # ユーザー情報を入力
      fill_in 'ニックネーム', with: @user.nickname
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード 6文字以上の半角数字', with: @user.password
      fill_in '同じパスワードを入力してください', with: @user.password_confirmation
      # サインアップボタンを押すとユーザーモデルのカウントが1上がることを確認
      expect{
        find('input[name="commit"]').click
      }.to change { User.count }.by(1)
      # 性格診断ページへ遷移することを確認
      expect(current_path).to eq new_enneagram_path
    end
  end
  context 'ユーザー新規登録ができないとき' do
    it '誤った情報ではユーザー新規登録ができずに新規登録ページへ戻ってくる' do
      # トップページに移動しようするとログイン画面に遷移
      visit root_path
      expect(page).to have_content('新規登録はこちらです。')
      # 新規登録ページに遷移
      click_on '新規登録はこちらです。'
      # 新規登録ページへ移動しユーザー情報を入力
      fill_in 'ニックネーム', with: ""
      fill_in 'メールアドレス', with: ""
      fill_in 'パスワード 6文字以上の半角数字', with: ""
      fill_in '同じパスワードを入力してください', with: ""
      # 新規登録ボタンを押してもユーザーモデルのカウントは上がらないことを確認
      expect{
        find('input[name="commit"]').click
      }.to change { User.count }.by(0)
      # 新規登録ページへ戻されることを確認
      expect(current_path).to eq "/users"
    end
  end
end
RSpec.describe 'ログイン', type: :system do
  before do
    @user = FactoryBot.create(:user)
  end
  context 'ログインができるとき' do
    it '保存されているユーザーの情報と合致すればログインができる' do
      # トップページに移動しようするとログイン画面に遷移
      visit root_path
      expect(page).to have_content('新規登録はこちらです。')
      # ログインするための入力を実行
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      find('input[name="commit"]').click
      # 性格診断ページへ遷移することを確認
      expect(current_path).to eq new_enneagram_path
    end
  end
  context 'ログインができないとき' do
    it '保存されているユーザーの情報と合致しないとログインができない' do
      # トップページに移動しようするとログイン画面に遷移
      visit root_path
      expect(page).to have_content('新規登録はこちらです。')
      # ログインするための入力を実行
      fill_in 'メールアドレス', with: ""
      fill_in 'パスワード', with: ""
      find('input[name="commit"]').click
      # ログインページへ戻されることを確認
      expect(current_path).to eq new_user_session_path
    end
  end
end