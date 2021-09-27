require 'oystercard'

describe Oystercard do
    it 'responds to balance' do
        expect(subject).to respond_to :balance
    end

    it 'starts a new card with 0 balance' do
        expect(subject.balance).to eq (0)
    end

end