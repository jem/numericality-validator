require 'test_helper'

class ServerTest < ActiveSupport::TestCase
  test "should not save without u_size" do
    server = Server.new
    assert !server.save, "saved without u_size"
  end

  test "should save with numerical u_size" do
    server = Server.new
    server.u_size = 5
    assert server.save, "saved with numerical u_size"
  end

  test "should not save with non-numeric u_size" do
    server = Server.new
    server.u_size = 'a'
    assert !server.save, "saved with non-numeric u_size"
  end
end
