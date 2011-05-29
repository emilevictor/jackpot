module Jackpot
  module Payment

    module Gateways

      class AuthorizeNet
        require 'active_merchant'

        def initialize(params)
          @gateway = ActiveMerchant::Billing::AuthorizeNetGateway(:login    => params[:login] ,
                                                                  :password => params[:password])
        end

        def purchase(amount, credit_card, options={})
          @gateway.purchase(amount, credit_card, options)
        end

        def recurring(amount, credit_card, recurring_options)
          @gateway.recurring(amount, credit_card, recurring_options)
        end
      end
    end
  end
end
