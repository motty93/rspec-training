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

    shared_examples 'presence or empty' do
      it { is_expected.to be boolean }
    end

    describe 'presence pattern' do
      let(:boolean) { true }
      it_behaves_like 'presence or empty'
    end

    describe 'empty pattern' do
      let(:boolean) { false }

      context 'name empty' do
        before { user.name = '' }
        it_behaves_like 'presence or empty'
      end

      context 'age empty' do
        before { user.age = '' }
        it_behaves_like 'presence or empty'
      end
    end
  end
end
