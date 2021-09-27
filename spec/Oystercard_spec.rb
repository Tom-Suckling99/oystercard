require 'oystercard'

describe Oystercard do
    it 'responds to balance' do
        expect(subject).to respond_to :balance
    end

    it 'starts a new card with 0 balance' do
        expect(subject.balance).to eq (0)
    end

    describe '#top_up' do

        it 'responds to top_up method with argument' do
            expect(subject).to respond_to(:top_up).with(1).argument
        end
    
        it 'increases the balance by however much is topped up' do
            card = Oystercard.new
            card.top_up(20)
            expect(card.balance).to eq (20)
        end
    end

    it 'raises error if user goes over balance limit' do
        limit = Oystercard::LIMIT
        expect{subject.top_up(limit)}.to raise_error"Exceeded the maximum of #{limit} balance"
    end

    describe '#deduct' do
        it 'responds to deduct method with argument' do
            expect(subject).to respond_to(:deduct).with(1).argument
        end

        it 'decreases the balance by however much is deducted' do
            card = Oystercard.new
            card.deduct(20)
            expect(card.balance).to eq (-20)
        end
    end

    it 'responds to in journey' do
        expect(subject).to respond_to :in_journey?
    end

    it 'touches in makes in journey true' do
        card = subject.touch_in
        expect(card.in_journey?).to eq true
    end

    it 'touches out makes in journey false' do
        card = subject.touch_out
        expect(card.in_journey?).to eq false
    end

end