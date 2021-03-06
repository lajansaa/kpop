# -*- encoding: utf-8 -*-
# stub: stripe 3.13.0 ruby lib

Gem::Specification.new do |s|
  s.name = "stripe"
  s.version = "3.13.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Stripe"]
  s.date = "2018-05-01"
  s.description = "Stripe is the easiest way to accept payments online.  See https://stripe.com for details."
  s.email = "support@stripe.com"
  s.executables = ["stripe-console"]
  s.files = [".gitattributes", ".github/ISSUE_TEMPLATE.md", ".gitignore", ".rubocop.yml", ".rubocop_todo.yml", ".travis.yml", "CHANGELOG.md", "CONTRIBUTORS", "Gemfile", "History.txt", "LICENSE", "README.md", "Rakefile", "VERSION", "bin/stripe-console", "lib/data/ca-certificates.crt", "lib/stripe.rb", "lib/stripe/account.rb", "lib/stripe/alipay_account.rb", "lib/stripe/api_operations/create.rb", "lib/stripe/api_operations/delete.rb", "lib/stripe/api_operations/list.rb", "lib/stripe/api_operations/nested_resource.rb", "lib/stripe/api_operations/request.rb", "lib/stripe/api_operations/save.rb", "lib/stripe/api_resource.rb", "lib/stripe/apple_pay_domain.rb", "lib/stripe/application_fee.rb", "lib/stripe/application_fee_refund.rb", "lib/stripe/balance.rb", "lib/stripe/balance_transaction.rb", "lib/stripe/bank_account.rb", "lib/stripe/bitcoin_receiver.rb", "lib/stripe/bitcoin_transaction.rb", "lib/stripe/card.rb", "lib/stripe/charge.rb", "lib/stripe/country_spec.rb", "lib/stripe/coupon.rb", "lib/stripe/customer.rb", "lib/stripe/dispute.rb", "lib/stripe/ephemeral_key.rb", "lib/stripe/errors.rb", "lib/stripe/event.rb", "lib/stripe/exchange_rate.rb", "lib/stripe/file_upload.rb", "lib/stripe/invoice.rb", "lib/stripe/invoice_item.rb", "lib/stripe/invoice_line_item.rb", "lib/stripe/list_object.rb", "lib/stripe/login_link.rb", "lib/stripe/oauth.rb", "lib/stripe/order.rb", "lib/stripe/order_return.rb", "lib/stripe/payout.rb", "lib/stripe/plan.rb", "lib/stripe/product.rb", "lib/stripe/recipient.rb", "lib/stripe/recipient_transfer.rb", "lib/stripe/refund.rb", "lib/stripe/reversal.rb", "lib/stripe/singleton_api_resource.rb", "lib/stripe/sku.rb", "lib/stripe/source.rb", "lib/stripe/source_transaction.rb", "lib/stripe/stripe_client.rb", "lib/stripe/stripe_object.rb", "lib/stripe/stripe_response.rb", "lib/stripe/subscription.rb", "lib/stripe/subscription_item.rb", "lib/stripe/three_d_secure.rb", "lib/stripe/token.rb", "lib/stripe/topup.rb", "lib/stripe/transfer.rb", "lib/stripe/usage_record.rb", "lib/stripe/util.rb", "lib/stripe/version.rb", "lib/stripe/webhook.rb", "stripe.gemspec", "test/api_stub_helpers.rb", "test/stripe/account_external_accounts_operations_test.rb", "test/stripe/account_login_links_operations_test.rb", "test/stripe/account_test.rb", "test/stripe/alipay_account_test.rb", "test/stripe/api_operations_test.rb", "test/stripe/api_resource_test.rb", "test/stripe/apple_pay_domain_test.rb", "test/stripe/application_fee_refund_test.rb", "test/stripe/application_fee_refunds_operations_test.rb", "test/stripe/application_fee_test.rb", "test/stripe/balance_test.rb", "test/stripe/bank_account_test.rb", "test/stripe/charge_test.rb", "test/stripe/country_spec_test.rb", "test/stripe/coupon_test.rb", "test/stripe/customer_card_test.rb", "test/stripe/customer_sources_operations_test.rb", "test/stripe/customer_test.rb", "test/stripe/dispute_test.rb", "test/stripe/ephemeral_key_test.rb", "test/stripe/errors_test.rb", "test/stripe/exchange_rate_test.rb", "test/stripe/file_upload_test.rb", "test/stripe/invoice_item_test.rb", "test/stripe/invoice_line_item_test.rb", "test/stripe/invoice_test.rb", "test/stripe/list_object_test.rb", "test/stripe/login_link_test.rb", "test/stripe/oauth_test.rb", "test/stripe/order_return_test.rb", "test/stripe/order_test.rb", "test/stripe/payout_test.rb", "test/stripe/plan_test.rb", "test/stripe/product_test.rb", "test/stripe/recipient_test.rb", "test/stripe/refund_test.rb", "test/stripe/reversal_test.rb", "test/stripe/sku_test.rb", "test/stripe/source_test.rb", "test/stripe/source_transaction_test.rb", "test/stripe/stripe_client_test.rb", "test/stripe/stripe_object_test.rb", "test/stripe/stripe_response_test.rb", "test/stripe/subscription_item_test.rb", "test/stripe/subscription_test.rb", "test/stripe/three_d_secure_test.rb", "test/stripe/topup_test.rb", "test/stripe/transfer_reversals_operations_test.rb", "test/stripe/transfer_test.rb", "test/stripe/usage_record_test.rb", "test/stripe/util_test.rb", "test/stripe/webhook_test.rb", "test/stripe_test.rb", "test/test_data.rb", "test/test_helper.rb"]
  s.homepage = "https://stripe.com/docs/api/ruby"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Ruby bindings for the Stripe API"
  s.test_files = ["test/api_stub_helpers.rb", "test/stripe/account_external_accounts_operations_test.rb", "test/stripe/account_login_links_operations_test.rb", "test/stripe/account_test.rb", "test/stripe/alipay_account_test.rb", "test/stripe/api_operations_test.rb", "test/stripe/api_resource_test.rb", "test/stripe/apple_pay_domain_test.rb", "test/stripe/application_fee_refund_test.rb", "test/stripe/application_fee_refunds_operations_test.rb", "test/stripe/application_fee_test.rb", "test/stripe/balance_test.rb", "test/stripe/bank_account_test.rb", "test/stripe/charge_test.rb", "test/stripe/country_spec_test.rb", "test/stripe/coupon_test.rb", "test/stripe/customer_card_test.rb", "test/stripe/customer_sources_operations_test.rb", "test/stripe/customer_test.rb", "test/stripe/dispute_test.rb", "test/stripe/ephemeral_key_test.rb", "test/stripe/errors_test.rb", "test/stripe/exchange_rate_test.rb", "test/stripe/file_upload_test.rb", "test/stripe/invoice_item_test.rb", "test/stripe/invoice_line_item_test.rb", "test/stripe/invoice_test.rb", "test/stripe/list_object_test.rb", "test/stripe/login_link_test.rb", "test/stripe/oauth_test.rb", "test/stripe/order_return_test.rb", "test/stripe/order_test.rb", "test/stripe/payout_test.rb", "test/stripe/plan_test.rb", "test/stripe/product_test.rb", "test/stripe/recipient_test.rb", "test/stripe/refund_test.rb", "test/stripe/reversal_test.rb", "test/stripe/sku_test.rb", "test/stripe/source_test.rb", "test/stripe/source_transaction_test.rb", "test/stripe/stripe_client_test.rb", "test/stripe/stripe_object_test.rb", "test/stripe/stripe_response_test.rb", "test/stripe/subscription_item_test.rb", "test/stripe/subscription_test.rb", "test/stripe/three_d_secure_test.rb", "test/stripe/topup_test.rb", "test/stripe/transfer_reversals_operations_test.rb", "test/stripe/transfer_test.rb", "test/stripe/usage_record_test.rb", "test/stripe/util_test.rb", "test/stripe/webhook_test.rb", "test/stripe_test.rb", "test/test_data.rb", "test/test_helper.rb"]

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["~> 0.10"])
    else
      s.add_dependency(%q<faraday>, ["~> 0.10"])
    end
  else
    s.add_dependency(%q<faraday>, ["~> 0.10"])
  end
end
