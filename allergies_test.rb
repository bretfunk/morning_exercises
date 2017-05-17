require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "./allergies"
require 'pry'

class CompleteMeTest < Minitest::Test

  def test_class_exists
    test = Allergies.new(1)
    result = test.nil?
    assert_equal result, false
  end

  def test_num_exists
    test = Allergies.new(1)
    result = test.num
    assert_equal result, 1
  end

  def test_product_hash_exists
    test = Allergies.new(1)
    result = test.products.nil?
    assert_equal result, false
  end

  def test_a_number_using_initialize
    test = Allergies.new(150)
    result = test.sort
    assert_equal result, ["cats", "tomatoes", "shellfish", "peanuts"]
  end

  def test_a_new_number_using_initialize
    test = Allergies.new(1)
    result = test.sort
    assert_equal result, ["eggs"]
  end

  def test_a_new_new_number_using_initialize
    test = Allergies.new(5)
    result = test.sort
    assert_equal result, ["shellfish","eggs"]
  end

  def test_a_different_number_using_initialize
    test = Allergies.new(51)
    result = test.sort
    assert_equal result, ["chocolate", "tomatoes", "peanuts", "eggs"]
  end

  def test_a_new_and_different_number_using_initialize
    test = Allergies.new(80)
    result = test.sort
    assert_equal result, ["pollen", "tomatoes"]
  end

  def test_all_products_using_initialize
    test = Allergies.new(255)
    result = test.sort
    assert_equal result, ["cats", "pollen", "chocolate", "tomatoes", "strawberries", "shellfish", "peanuts", "eggs"]
  end

  def test_all_products_using_sort_directly
    test = Allergies.new
    result = test.sort(255)
    assert_equal result, ["cats", "pollen", "chocolate", "tomatoes", "strawberries", "shellfish", "peanuts", "eggs"]
  end

  def test_eighty_using_sort_directly
    test = Allergies.new
    result = test.sort(80)
    assert_equal result, ["pollen", "tomatoes"]
  end

  def test_fifty_one_using_sort_directly
    test = Allergies.new
    result = test.sort(51)
    assert_equal result, ["chocolate", "tomatoes", "peanuts", "eggs"]
  end

  def test_one_fifty_using_sort_directly
    test = Allergies.new
    result = test.sort(150)
    assert_equal result, ["cats", "tomatoes", "shellfish", "peanuts"]
  end
end
