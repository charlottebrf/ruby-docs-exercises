class AboutNil < Neo::Koan
  def test_nil_is_an_object
    assert_equal true, nil.is_a?(Object), "Unlike NULL in other languages"
  end

  #nil is an object, in ruby every value is an object it is an example of NilClass: 1
  #unklike null in JS for example which has no value, is undefined & not an object

#nil is an object & has a value 
