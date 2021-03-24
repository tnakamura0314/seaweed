require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @post = FactoryBot.build(:post, user_id: @user.id)
  end

  describe '登録機能' do

    context '登録できるとき' do
      it 'すべての値が正しく入力されていれば登録できる' do
        expect(@post).to be_valid
      end
      it 'textが空でも登録できる' do
        @post.text = ''
        expect(@post).to be_valid
      end
      it 'checkedが空でも登録できる' do
        @post.checked = ''
        expect(@post).to be_valid
      end
    end

    context '登録できないとき' do
      it 'user_idが空だと登録できない' do
        @post.user_id = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("User can't be blank")
      end
    end
  end
end
