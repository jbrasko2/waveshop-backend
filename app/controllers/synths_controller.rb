class SynthsController < ApplicationController
    
    def index
        render json: Synth.all
    end

end
