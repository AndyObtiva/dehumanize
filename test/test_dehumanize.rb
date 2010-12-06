require 'helper'

class TestDehumanize < Test::Unit::TestCase

  {
    'Personal Phone' => 'personal_phone',
    'Home address'   => 'home_address',
    'HatRack'        => 'hat_rack',
    'Person'         => 'person',
  }.each do |human, dehumanized|
    should "turn '#{human}' to '#{dehumanized}'" do
      assert_equal(dehumanized, human.dehumanize)
    end
  end

end
