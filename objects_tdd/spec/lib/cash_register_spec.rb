require 'rspec'
require_relative '../../lib/cash_register'

describe CashRegister do
  it 'should be a CashRegister' do
    expect(subject).to be_a(CashRegister)
  end

  describe '#total' do
    it 'returns 0.00 for new CashRegisters' do
      expect(subject.total).to eq(0.00)
    end
  end

  describe '#purchase' do
    it 'increase the total by the #purchase amount' do
      expect(subject.total).to eq(0.00)
      subject.purchase(3.78)
      expect(subject.total).to eq(3.78)
    end
  end

  describe '#pay' do
    it 'decreases the total by the #pay amount' do
      expect(subject.total).to eq(0.00)
      subject.purchase(3.78)
      expect(subject.total).to eq(3.78)
      subject.pay(3.78)
      expect(subject.total).to eq(0.00)
    end

    describe '#change' do
      it 'when pay is greater than total #change is the excess' do
        expect(subject.total).to eq(0.00)
        subject.purchase(3.78)
        expect(subject.total).to eq(3.78)
        subject.pay(5.00)
        expect(subject.change).to eq(1.22)
        expect(subject.total).to eq(0.00)
        $stderr.puts 'Your change is $1.22.'
      end
    end
  end
end
