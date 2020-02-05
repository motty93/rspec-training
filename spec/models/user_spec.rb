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

    describe 'presence pattern' do
      it { is_expected.to be true }
    end

    describe 'empty pattern' do
      context 'name empty' do
        before { user.name = '' }

        it { is_expected.to be false }
      end

      context 'age empty' do
        before { user.age = '' }

        it { is_expected.to be false }
      end
    end
  end
end
