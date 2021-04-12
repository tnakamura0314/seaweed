require 'rails_helper'

RSpec.describe Food, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @food = FactoryBot.build(:food, user_id: @user.id)
    @food.image = fixture_file_upload('app/assets/images/sample.jpg')
  end

  describe '登録機能' do

    context '登録できるとき' do
      it '全ての値が正しく存在すれば登録できる' do
        expect(@food).to be_valid
      end
      it 'imageが空でも登録できる' do
        @food.image = nil
        expect(@food).to be_valid
      end
      it 'statusが空でも登録できる' do
        @food.status = ''
        expect(@food).to be_valid
      end
    end

    context '登録できないとき' do
      it 'nameが空だと登録できない' do
        @food.name = ''
        @food.valid?
        expect(@food.errors.full_messages).to include("食品名を入力してください")
      end
      it 'numberが空だと登録できない' do
        @food.number = ''
        @food.valid?
        expect(@food.errors.full_messages).to include("数量を入力してください")
      end
      it 'deadlineが空だと登録できない' do
        @food.deadline = ''
        @food.valid?
        expect(@food.errors.full_messages).to include("賞味期限/消費期限を入力してください")
      end
      it 'quantity_idが未選択だと登録できない' do
        @food.quantity_id = 1
        @food.valid?
        expect(@food.errors.full_messages).to include("数量呼称を選択してください")
      end
      it 'numberが全角数字だと登録できない' do
        @food.number = '２０００'
        @food.valid?
        expect(@food.errors.full_messages).to include("数量は半角数字で入力してください")
      end
      it 'numberが半角英数字混合だと登録できない' do
        @food.number = '123aaa'
        @food.valid?
        expect(@food.errors.full_messages).to include("数量は半角数字で入力してください")
      end
      it 'numberが半角英字だと登録できない' do
        @food.number = 'aaaaaa'
        @food.valid?
        expect(@food.errors.full_messages).to include("数量は半角数字で入力してください")
      end
      it 'user_idが空だと登録できない' do
        @food.user_id = nil
        @food.valid?
        expect(@food.errors.full_messages).to include("Userを入力してください")
      end
    end
  end
end
