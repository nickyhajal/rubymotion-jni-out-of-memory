module Api
  class << self
    attr_accessor :url
    def init(activity)
      @url = 'http://worlddominationsummit.com/api/'
      @request_queue = Com::Android::Volley::Toolbox::Volley.newRequestQueue(activity)
    end
    def get(path, params, &block)
      request(VolleyMethods::GET, path, params, &block)
    end
    def post(path, params, &block)
      request(VolleyMethods::POST, path, params, &block)
    end
    def delete(path, params, &block)
      request(VolleyMethods::DELETE, path, params, &block)
    end
    def request(method, path, params, &block)
      url = @url + path
      success_listener = Response.new(false, &block)
      error_listener = Response.new(true, &block)
      if method == VolleyMethods::DELETE || method == VolleyMethods::GET
        url += params_to_query_str(params)
        params = nil
      else
        params = Org::Json::JSONObject.new(Moran.generate(params))
      end
      request = Com::Android::Volley::Toolbox::JsonObjectRequest.new(method, url, params, success_listener, error_listener)
      @request_queue.add(request)
    end
    def params_to_query_str(params)
      str = '?'
      params.each do |key, val|
        str += "#{key}=#{val}&"
      end
      str[0...-1]
    end
  end
end

class Response
  attr_reader :is_err, :err_code, :raw, :json, :activity
  attr_accessor :callback
  def initialize(is_err, &block)
    @is_err = is_err
    self.callback = block
    self
  end
  def [](key)
    if @json.has(key.to_s)
      @json.get(key.to_s)
    else
      false
    end
  end
  def onResponse(rsp)
    @is_err = false
    @err_code = false
    @json = rsp
    callback.yield(self)
  end
  def onErrorResponse(error)
    puts error.to_s
    puts 'error'
  end
  def _(name)
    begin
      @json.get(name)
    rescue
      false
    end
  end
  def to_s
    self.inspect
  end
end
