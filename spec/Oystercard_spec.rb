require 'oystercard'

describe Oystercard do
    it 'responds to balance' do
        expect(subject).to respond_to :balance
    end

    it 'starts a new card with 0 balance' do
        expect(subject.balance).to eq (0)
    end

    it 'responds to top_up method with argument' do
        expect(subject).to respond_to(:top_up).with(1).argument
    end

    it 'increases the balance by however much is topped up' do
        card = Oystercard.new
        card.top_up(20)
        expect(card.balance).to eq (20)
    end
end