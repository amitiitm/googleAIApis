# frozen_string_literal: true

describe Nurse do
  it { is_expected.to have_and_belong_to_many(:skills) }
end

describe Nurse do
  it { is_expected.to have_and_belong_to_many(:departments) }
end

describe Nurse do
  it { is_expected.to belong_to(:city) }
end
