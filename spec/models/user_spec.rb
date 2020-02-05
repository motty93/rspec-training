require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#greet' do
    context '12歳以下の場合' do
      let(:taro) { create(:taro) }

      it '12歳以下のときはひらがなで答える' do
        expect(taro.greet).to eq 'ぼくはたろうだよ'
      end
    end

    context '13歳以上の場合' do
      let(:yuki) { create(:yuki) }

      it '13歳以上のときはひらがなで答える' do
        expect(yuki.greet).to eq '僕はユウキです'
      end
    end
  end

  describe 'validation' do
    let(:user) { build(:user) } # build: オブジェクトのみ生成
    subject { user.valid? }

    it 'name and age presence' do
      is_expected.to be true
    end

    it 'name empty' do
      user.name = ''
      is_expected.to be false
    end

    it 'age empty' do
      user.age = ''
      is_expected.to be false
    end
  end
end
