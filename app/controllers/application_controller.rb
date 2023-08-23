class ApplicationController < ActionController::Base
#----------------- devise関連の設定--------------------
    def after_sign_in_path_for(resource)
        meganes_path
      end

    def after_sign_out_path_for(resource)
        user_session_path
      end
end
