# Asaas Ruby

[![Build Status](https://travis-ci.org/thiagodiniz/asaas-ruby.svg?branch=master)](https://travis-ci.org/thiagodiniz/asaas-ruby)

A biblioteca Asaas Ruby tem provê um acesso a API Rest do asaas.com.br

## Installation

You don't need this source code unless you want to modify the gem. If you just
want to use the package, just run:

```sh
gem install asaas-ruby
```

Para fazer o build da gem

```sh
gem build asaas-ruby.gemspec
gem install asaas-ruby-0.2.25.gem
```

### Changelog

 - 0.2.21 - Add credit fields to Payment
 - 0.2.20 - 
 - 0.2.19 - Small fixes
 - 0.2.18 - Account documents upload
 - 0.2.17 -
 - 0.2.16 - Wallet account tranfers
 - 0.2.15 - Bank account tranfers

### Requirements

- Ruby 2.3+.

## Usage

```ruby
require 'asaas-ruby'

Asaas.setup do |config|
  config.token = '87d4fd66fec6c605fb00f8da81fee16965561bedfc2f4c4066e533cbaf3cece9'
  config.debug = true
end

asaas_client = Asaas::Client.new()

customer = Asaas::Customer.new({
  name: 'Matheus Lessa', 
  cpfCnpj: '44929287073',
  email: 'mathewslessa@gmail.com',
  id: 'cus_000004838427',
})
customer_entity = asaas_client.customers.create(customer)

token = Asaas::CreditCardToken.new({
  creditCardCcv: '123',
  creditCardHolderName: "Juscelino Kubitschek",
  creditCardExpiryMonth: 01, 
  creditCardExpiryYear: 2025, 
  creditCardNumber: 12345567812345678, 
  customer: customer_entity.id
})

response = asaas_client.credit_card_tokens.create(token)

# charge = Asaas::Payment.new({
#   customer: customer_entity.id,
#   dueDate: DateTime.now,
#   billingType: 'BOLETO',
#   description: "Teste de boleto",
#   value: BigDecimal("103.54").to_f,
#   postalService: false
# })

charge = Asaas::Payment.new({
  customer: 'cus_000004863116',
  dueDate: DateTime.now,
  billingType: 'CREDIT_CARD',
  description: "Teste de cartão de credito",
  value: BigDecimal("103.54").to_f,
  creditCardToken: '02f59048-df2d-4dbc-87a5-5bf87e1e727c'
})

asaas_client.payments.create(charge)
# asaas_client.payments.fetchPixQrCode('pay_4651617361594235')
```