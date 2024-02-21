=begin
#Echo Server API

#Echo Server API

The version of the OpenAPI document: 0.1.0
Contact: team@openapitools.org
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.4.0-SNAPSHOT

=end

require 'cgi'

module OpenapiClient
  class BodyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Test binary (gif) response body
    # Test binary (gif) response body
    # @param [Hash] opts the optional parameters
    # @return [File]
    def test_binary_gif(opts = {})
      data, _status_code, _headers = test_binary_gif_with_http_info(opts)
      data
    end

    # Test binary (gif) response body
    # Test binary (gif) response body
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def test_binary_gif_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BodyApi.test_binary_gif ...'
      end
      # resource path
      local_var_path = '/binary/gif'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/gif'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BodyApi.test_binary_gif",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BodyApi#test_binary_gif\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test body parameter(s)
    # Test body parameter(s)
    # @param [Hash] opts the optional parameters
    # @option opts [File] :body 
    # @return [String]
    def test_body_application_octetstream_binary(opts = {})
      data, _status_code, _headers = test_body_application_octetstream_binary_with_http_info(opts)
      data
    end

    # Test body parameter(s)
    # Test body parameter(s)
    # @param [Hash] opts the optional parameters
    # @option opts [File] :body 
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def test_body_application_octetstream_binary_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BodyApi.test_body_application_octetstream_binary ...'
      end
      # resource path
      local_var_path = '/body/application/octetstream/binary'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/octet-stream'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BodyApi.test_body_application_octetstream_binary",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BodyApi#test_body_application_octetstream_binary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test array of binary in multipart mime
    # Test array of binary in multipart mime
    # @param files [Array<File>] 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def test_body_multipart_formdata_array_of_binary(files, opts = {})
      data, _status_code, _headers = test_body_multipart_formdata_array_of_binary_with_http_info(files, opts)
      data
    end

    # Test array of binary in multipart mime
    # Test array of binary in multipart mime
    # @param files [Array<File>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def test_body_multipart_formdata_array_of_binary_with_http_info(files, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BodyApi.test_body_multipart_formdata_array_of_binary ...'
      end
      # verify the required parameter 'files' is set
      if @api_client.config.client_side_validation && files.nil?
        fail ArgumentError, "Missing the required parameter 'files' when calling BodyApi.test_body_multipart_formdata_array_of_binary"
      end
      # resource path
      local_var_path = '/body/application/octetstream/array_of_binary'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['files'] = @api_client.build_collection_param(files, :csv)

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BodyApi.test_body_multipart_formdata_array_of_binary",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BodyApi#test_body_multipart_formdata_array_of_binary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test single binary in multipart mime
    # Test single binary in multipart mime
    # @param [Hash] opts the optional parameters
    # @option opts [File] :my_file 
    # @return [String]
    def test_body_multipart_formdata_single_binary(opts = {})
      data, _status_code, _headers = test_body_multipart_formdata_single_binary_with_http_info(opts)
      data
    end

    # Test single binary in multipart mime
    # Test single binary in multipart mime
    # @param [Hash] opts the optional parameters
    # @option opts [File] :my_file 
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def test_body_multipart_formdata_single_binary_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BodyApi.test_body_multipart_formdata_single_binary ...'
      end
      # resource path
      local_var_path = '/body/application/octetstream/single_binary'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['my-file'] = opts[:'my_file'] if !opts[:'my_file'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BodyApi.test_body_multipart_formdata_single_binary",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BodyApi#test_body_multipart_formdata_single_binary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test body parameter(s)
    # Test body parameter(s)
    # @param [Hash] opts the optional parameters
    # @option opts [Pet] :pet Pet object that needs to be added to the store
    # @return [Pet]
    def test_echo_body_all_of_pet(opts = {})
      data, _status_code, _headers = test_echo_body_all_of_pet_with_http_info(opts)
      data
    end

    # Test body parameter(s)
    # Test body parameter(s)
    # @param [Hash] opts the optional parameters
    # @option opts [Pet] :pet Pet object that needs to be added to the store
    # @return [Array<(Pet, Integer, Hash)>] Pet data, response status code and response headers
    def test_echo_body_all_of_pet_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BodyApi.test_echo_body_all_of_pet ...'
      end
      # resource path
      local_var_path = '/echo/body/allOf/Pet'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'pet'])

      # return_type
      return_type = opts[:debug_return_type] || 'Pet'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BodyApi.test_echo_body_all_of_pet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BodyApi#test_echo_body_all_of_pet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test free form object
    # Test free form object
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body Free form object
    # @return [String]
    def test_echo_body_free_form_object_response_string(opts = {})
      data, _status_code, _headers = test_echo_body_free_form_object_response_string_with_http_info(opts)
      data
    end

    # Test free form object
    # Test free form object
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body Free form object
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def test_echo_body_free_form_object_response_string_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BodyApi.test_echo_body_free_form_object_response_string ...'
      end
      # resource path
      local_var_path = '/echo/body/FreeFormObject/response_string'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BodyApi.test_echo_body_free_form_object_response_string",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BodyApi#test_echo_body_free_form_object_response_string\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test body parameter(s)
    # Test body parameter(s)
    # @param [Hash] opts the optional parameters
    # @option opts [Pet] :pet Pet object that needs to be added to the store
    # @return [Pet]
    def test_echo_body_pet(opts = {})
      data, _status_code, _headers = test_echo_body_pet_with_http_info(opts)
      data
    end

    # Test body parameter(s)
    # Test body parameter(s)
    # @param [Hash] opts the optional parameters
    # @option opts [Pet] :pet Pet object that needs to be added to the store
    # @return [Array<(Pet, Integer, Hash)>] Pet data, response status code and response headers
    def test_echo_body_pet_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BodyApi.test_echo_body_pet ...'
      end
      # resource path
      local_var_path = '/echo/body/Pet'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'pet'])

      # return_type
      return_type = opts[:debug_return_type] || 'Pet'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BodyApi.test_echo_body_pet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BodyApi#test_echo_body_pet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test empty response body
    # Test empty response body
    # @param [Hash] opts the optional parameters
    # @option opts [Pet] :pet Pet object that needs to be added to the store
    # @return [String]
    def test_echo_body_pet_response_string(opts = {})
      data, _status_code, _headers = test_echo_body_pet_response_string_with_http_info(opts)
      data
    end

    # Test empty response body
    # Test empty response body
    # @param [Hash] opts the optional parameters
    # @option opts [Pet] :pet Pet object that needs to be added to the store
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def test_echo_body_pet_response_string_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BodyApi.test_echo_body_pet_response_string ...'
      end
      # resource path
      local_var_path = '/echo/body/Pet/response_string'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'pet'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BodyApi.test_echo_body_pet_response_string",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BodyApi#test_echo_body_pet_response_string\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test string enum response body
    # Test string enum response body
    # @param [Hash] opts the optional parameters
    # @option opts [String] :body String enum
    # @return [StringEnumRef]
    def test_echo_body_string_enum(opts = {})
      data, _status_code, _headers = test_echo_body_string_enum_with_http_info(opts)
      data
    end

    # Test string enum response body
    # Test string enum response body
    # @param [Hash] opts the optional parameters
    # @option opts [String] :body String enum
    # @return [Array<(StringEnumRef, Integer, Hash)>] StringEnumRef data, response status code and response headers
    def test_echo_body_string_enum_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BodyApi.test_echo_body_string_enum ...'
      end
      # resource path
      local_var_path = '/echo/body/string_enum'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringEnumRef'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BodyApi.test_echo_body_string_enum",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BodyApi#test_echo_body_string_enum\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test empty json (request body)
    # Test empty json (request body)
    # @param [Hash] opts the optional parameters
    # @option opts [Tag] :tag Tag object
    # @return [String]
    def test_echo_body_tag_response_string(opts = {})
      data, _status_code, _headers = test_echo_body_tag_response_string_with_http_info(opts)
      data
    end

    # Test empty json (request body)
    # Test empty json (request body)
    # @param [Hash] opts the optional parameters
    # @option opts [Tag] :tag Tag object
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def test_echo_body_tag_response_string_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BodyApi.test_echo_body_tag_response_string ...'
      end
      # resource path
      local_var_path = '/echo/body/Tag/response_string'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tag'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"BodyApi.test_echo_body_tag_response_string",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BodyApi#test_echo_body_tag_response_string\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
