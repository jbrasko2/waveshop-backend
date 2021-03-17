class SynthsController < ApplicationController
    before_action :set_synth, only: [:show]
    
    def index
        render json: Synth.all
    end

    def show
        render json: @synth, serializer: SynthShowSerializer
    end

    private

    def set_synth
        @synth = Synth.find_by_id(params[:id])
    end

end
