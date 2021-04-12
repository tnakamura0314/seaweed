require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it '全ての値が正しく存在すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'passwordとpassword_confirmationが6文字以上且つ、半角英数字が混合されていれば登録できる' do
        @user.password = 'aaa000'
        @user.password_confirmation = 'aaa000'
        expect(@user).to be_valid
      end
      it 'emailは＠が含まれていれば登録できる' do
        @user.email = 'aaa@test.com'
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it 'passwordが半角数字のみでは登録できない' do
        @user.password = '000000'
        @user.password_confirmation = '000000'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは文字と数字の両方を含めてください")
      end
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end
      it 'birthdayが空では登録できない' do
        @user.birthday = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("生年月日を入力してください")
      end
      it '重複するemailは登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")
      end
      it 'passwordはpassword_confirmationと値の一致しないと登録できない' do
        @user.password = 'aaa000'
        @user.password_confirmation = 'abc000'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = 'aaa00'
        @user.password_confirmation = 'aaa00'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end
      it 'passwordが半角英字のみでは登録できない' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは文字と数字の両方を含めてください")
      end
      it 'passwordは全角では登録できない' do
        @user.password = 'ａａａ２２２'
        @user.password_confirmation = 'ａａａ２２２'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは文字と数字の両方を含めてください")
      end
      it 'sex_idが未選択だと登録できない' do
        @user.sex_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("性別を選択してください")
      end
      it 'position_idが未選択だと登録できない' do
        @user.position_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("職業を選択してください")
      end
      it 'household_idが未選択だと登録できない' do
        @user.household_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("家族構成を選択してください")
      end
    end
  end
end

