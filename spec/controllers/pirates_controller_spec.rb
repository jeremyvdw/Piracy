require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe PiratesController do

  def mock_pirate(stubs={})
    @mock_pirate ||= mock_model(Pirate, stubs).as_null_object
  end

  # describe "GET index" do
  #   it "assigns all pirates as @pirates" do
  #     Pirate.stub(:all) { [mock_pirate] }
  #     get :index
  #     assigns(:pirates).should eq([mock_pirate])
  #   end
  # end
  # 
  # describe "GET show" do
  #   it "assigns the requested pirate as @pirate" do
  #     Pirate.stub(:find).with("37") { mock_pirate }
  #     get :show, :id => "37"
  #     assigns(:pirate).should be(mock_pirate)
  #   end
  # end
  # 
  # describe "GET new" do
  #   it "assigns a new pirate as @pirate" do
  #     Pirate.stub(:new) { mock_pirate }
  #     get :new
  #     assigns(:pirate).should be(mock_pirate)
  #   end
  # end
  # 
  # describe "GET edit" do
  #   it "assigns the requested pirate as @pirate" do
  #     Pirate.stub(:find).with("37") { mock_pirate }
  #     get :edit, :id => "37"
  #     assigns(:pirate).should be(mock_pirate)
  #   end
  # end

  describe "POST create" do
    describe "with valid params" do
      it "assign a parrot to the created pirate" do
        params = Factory.attributes_for(:pirate).merge(:parrots_attributes => [{:name => "Blackbird"}])
        post :create, :pirate => params
        assigns(:pirate).parrots.count.should be 1
      end
      
      describe "assigns and updates created pirate's parrot, no matter how params are sorted" do
        before do
          @parrot = Factory(:parrot)
        end
        
        it "case #1" do
          params = Factory.attributes_for(:pirate).
            merge(:parrot_ids => [@parrot.id]).
            merge(:parrots_attributes => [{:name => @parrot.name, :id => @parrot.id}])
          
          post :create, :pirate => params
          assigns(:pirate).parrots.should eq [@parrot]
        end
        
        it "case #2" do
          params = Factory.attributes_for(:pirate).
            merge(:parrots_attributes => [{:name => @parrot.name, :id => @parrot.id}]).
            merge(:parrot_ids => [@parrot.id])
          
          post :create, :pirate => params
          assigns(:pirate).parrots.should eq [@parrot]
        end
      end
    end
  end

  # describe "PUT update" do
  #   describe "with valid params" do
  #     it "updates the requested pirate" do
  #       Pirate.stub(:find).with("37") { mock_pirate }
  #       mock_pirate.should_receive(:update_attributes).with({'these' => 'params'})
  #       put :update, :id => "37", :pirate => {'these' => 'params'}
  #     end
  # 
  #     it "assigns the requested pirate as @pirate" do
  #       Pirate.stub(:find) { mock_pirate(:update_attributes => true) }
  #       put :update, :id => "1"
  #       assigns(:pirate).should be(mock_pirate)
  #     end
  # 
  #     it "redirects to the pirate" do
  #       Pirate.stub(:find) { mock_pirate(:update_attributes => true) }
  #       put :update, :id => "1"
  #       response.should redirect_to(pirate_url(mock_pirate))
  #     end
  #   end
  # 
  #   describe "with invalid params" do
  #     it "assigns the pirate as @pirate" do
  #       Pirate.stub(:find) { mock_pirate(:update_attributes => false) }
  #       put :update, :id => "1"
  #       assigns(:pirate).should be(mock_pirate)
  #     end
  # 
  #     it "re-renders the 'edit' template" do
  #       Pirate.stub(:find) { mock_pirate(:update_attributes => false) }
  #       put :update, :id => "1"
  #       response.should render_template("edit")
  #     end
  #   end
  # end
  # 
  # describe "DELETE destroy" do
  #   it "destroys the requested pirate" do
  #     Pirate.stub(:find).with("37") { mock_pirate }
  #     mock_pirate.should_receive(:destroy)
  #     delete :destroy, :id => "37"
  #   end
  # 
  #   it "redirects to the pirates list" do
  #     Pirate.stub(:find) { mock_pirate }
  #     delete :destroy, :id => "1"
  #     response.should redirect_to(pirates_url)
  #   end
  # end

end
