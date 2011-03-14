require 'rubygems'
require 'mongo'
require 'edgecase'

class AboutDBConnect < EdgeCase::Koan
  def test_connecting_to_a_database
    connection = Mongo::Connection.new
    assert_not_nil connection
    assert_equal __, connection.class
  end

  def test_creating_and_deleting_a_database
    connection = Mongo::Connection.new
    db = connection.db("mongo_koans")
    assert_not_nil db, "DB not available"
    assert_equal __, db.class

    connection.drop_database("mongo_koans")
  end

end
