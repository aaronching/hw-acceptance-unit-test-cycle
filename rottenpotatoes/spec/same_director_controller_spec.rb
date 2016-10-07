require 'rails_helper'


describe MoviesController, type: :controller do
    context 'when movie has director' do
        it 'renders same director page' do
            movie_1 = Movie.create(:title => "Harambe", :director => "Isaac Zhang")
            movie_2 = Movie.create(:title => "Droprambe", :director => "Isaac Zhang")
            
            get :samedirector, :id => movie_1
            
            expect(response).to render_template("samedirector")
        end
    end
    
    context 'when movie has no director' do
        it 'renders index page' do
            movie_1 = Movie.create(:title => "Harambe")
            
            get :samedirector, :id => movie_1
            
            expect(response).to redirect_to('/movies')
            expect(flash[:notice]).to eq("\'Harambe\' has no director info")
        end
    end
end