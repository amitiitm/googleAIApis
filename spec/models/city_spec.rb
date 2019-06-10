# frozen_string_literal: true

describe City do
  it { is_expected.to have_many(:nurses) }
end
