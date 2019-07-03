require "spec_helper"

RSpec.describe Bootpay do
  it 'send sms' do
    bootpay = Bootpay::ServerApi.new(
      '59bfc738e13f337dbd6ca48a',
      'pDc0NwlkEX3aSaHTp/PPL/i8vn5E/CqRChgyEp/gHD0=',
      :development
    )
    result  = bootpay.get_access_token
    expect(result).not_to be_empty
    expect(result[:status]).to eq(200)

    result = bootpay.send_sms(['01095735114'], '테스트 메세지입니다', '01040334678')
    print result
  end
end