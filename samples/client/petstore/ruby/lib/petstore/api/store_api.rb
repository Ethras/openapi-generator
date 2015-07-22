require "uri"

module Petstore
  class StoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.new)
      @api_client = api_client
    end


    # Returns pet inventories by status
    # Returns a map of status codes to quantities
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, Integer>]
    def get_inventory(opts = {})
      if @api_client.debugging
        @api_client.logger.debug "Calling API: StoreApi#get_inventory ..."
      end
      
      # resource path
      path = "/store/inventory".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['api_key']
      response = Request.new(@api_client, :GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Hash<String, Integer>')
      if @api_client.debugging
        @api_client.logger.debug "API called: StoreApi#get_inventory. Result: #{result.inspect}"
      end
      result
    end

    # Place an order for a pet
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Order] :body order placed for purchasing the pet
    # @return [Order]
    def place_order(opts = {})
      if @api_client.debugging
        @api_client.logger.debug "Calling API: StoreApi#place_order ..."
      end
      
      # resource path
      path = "/store/order".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Request.object_to_http_body(opts[:'body'])
      

      auth_names = []
      response = Request.new(@api_client, :POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Order')
      if @api_client.debugging
        @api_client.logger.debug "API called: StoreApi#place_order. Result: #{result.inspect}"
      end
      result
    end

    # Find purchase order by ID
    # For valid response try integer IDs with value &lt;= 5 or &gt; 10. Other values will generated exceptions
    # @param order_id ID of pet that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def get_order_by_id(order_id, opts = {})
      if @api_client.debugging
        @api_client.logger.debug "Calling API: StoreApi#get_order_by_id ..."
      end
      
      # verify the required parameter 'order_id' is set
      fail "Missing the required parameter 'order_id' when calling get_order_by_id" if order_id.nil?
      
      # resource path
      path = "/store/order/{orderId}".sub('{format}','json').sub('{' + 'orderId' + '}', order_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Request.new(@api_client, :GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Order')
      if @api_client.debugging
        @api_client.logger.debug "API called: StoreApi#get_order_by_id. Result: #{result.inspect}"
      end
      result
    end

    # Delete purchase order by ID
    # For valid response try integer IDs with value &lt; 1000. Anything above 1000 or nonintegers will generate API errors
    # @param order_id ID of the order that needs to be deleted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_order(order_id, opts = {})
      if @api_client.debugging
        @api_client.logger.debug "Calling API: StoreApi#delete_order ..."
      end
      
      # verify the required parameter 'order_id' is set
      fail "Missing the required parameter 'order_id' when calling delete_order" if order_id.nil?
      
      # resource path
      path = "/store/order/{orderId}".sub('{format}','json').sub('{' + 'orderId' + '}', order_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      Request.new(@api_client, :DELETE, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      if @api_client.debugging
        @api_client.logger.debug "API called: StoreApi#delete_order"
      end
      nil
    end
  end
end
