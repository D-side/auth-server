module Api::V1
  class CredentialsController < ApplicationController
    before_action :doorkeeper_authorize!
    respond_to :json

    def me
      respond_with current_api_user
    end

    private

    def current_api_user
      User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end
  end
end
