require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @new_rocket = Rocket.new
  end

  def test_name_saves
    result = @new_rocket.name=('ari')

    expected = 'ari'
    assert_equal(expected, result)
  end

  def test_color
    result = @new_rocket.colour=('green')

    expected = 'green'
    assert_equal(expected, result)
  end

  def test_rocket_on_land_can_lift_off
    result = @new_rocket.lift_off
    expected = true

    assert_equal(expected, result)
  end

  def test_rocket_in_air_cannot_lift_off
    @new_rocket = Rocket.new({flying: true})
    result = @new_rocket.lift_off
    expected = false

    assert_equal(expected, result)
  end

  def test_rocket_on_land_cannot_land
    result = @new_rocket.land
    expected = false

    assert_equal(expected, result)
  end

  def test_rocket_in_air_can_land
    @new_rocket = Rocket.new({flying: true})
    result = @new_rocket.land
    expected = true

    assert_equal(expected, result)
  end

end
