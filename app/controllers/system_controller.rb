# coding: utf-8

class SystemController < ApplicationController
  skip_before_filter :verify_authenticity_token
  require 'httpclient'

  def index
    @version = "1.0"
    @date = DateTime.now.strftime('%Y-%m-%d %H-%M')
  end

  def midori
    client = HTTPClient.new
    client.debug_dev = $stderr    # デバッグ情報を標準エラー出力に

    query = {'mail_addr' => 'issei@ikmz.net', 'password' => 'kansa2net'}
    res = client.get('https://midori-cloud.net/api/v2/auth', :query => query, :follow_redirect => true)

    puts "code=#{res.code}"    # res.code : Fixnum
    puts HTTP::Status.successful?(res.code)
    p res.headers
    puts res.body
  end

  def record
    Record.create(record_params)
  end

  private
    def record_params
      params.permit(:user_name, :crop_name, :date, :work_name, :work_reason, :technical_supplement, :consideration, :evidence, :photo)
    end
end
