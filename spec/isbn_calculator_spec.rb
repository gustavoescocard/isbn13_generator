require 'isbn_calculator'

describe IsbnCalculator do

  before do
    # subject.number = 978_186_197_271
    subject.number = 978_014_300_723
  end

  context 'when attribute number is set' do
    it "have a number" do
      # expect(subject).to have_attributes(number: 978186197271)
      expect(subject).to have_attributes(number: 978014300723)
    end

    it "have a integer number" do
      expect(subject.number).to be_kind_of(Integer)
    end

    it "have 12 digits length" do
      expect(subject.number.to_s.size).to eq(12)
    end
  end

  context "when calculation is done" do
    let (:result) { subject.calculate_last_digit(subject.number) }

    it "validates last digit" do
      # expect(result).to eq(2)
      expect(result).to eq(4)
    end
  end

end
