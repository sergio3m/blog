require "spec_helper"

describe CommentsController do
  describe "routing" do
    
    it "routes to #_new" do
      get("/comments/_new").should route_to("comments#_new")
    end

  end
end
