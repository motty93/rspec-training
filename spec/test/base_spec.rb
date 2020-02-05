require 'rails_helper'

RSpec.describe do
  describe '四則演算' do
    it '1 + 1 = 2' do
      expect(1 + 1).to eq 2
    end

    it '10 - 1 = 9' do
      expect(10 - 1).to eq 9
    end
  end

  describe User do
    let(:taro) { create(:taro) }
    let(:yuki) { create(:yuki) }

    describe '#greet' do
      it '12歳以下のときはひらがなで答える' do
        expect(taro.greet).to eq 'ぼくはたろうだよ'
      end

      it '13歳以上のときはひらがなで答える' do
        expect(yuki.greet).to eq '僕はユウキです'
      end
    end
  end
end
