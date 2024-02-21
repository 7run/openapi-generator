/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.lang.reflect.Type;
import javax.json.bind.annotation.JsonbTypeDeserializer;
import javax.json.bind.annotation.JsonbTypeSerializer;
import javax.json.bind.serializer.DeserializationContext;
import javax.json.bind.serializer.JsonbDeserializer;
import javax.json.bind.serializer.JsonbSerializer;
import javax.json.bind.serializer.SerializationContext;
import javax.json.stream.JsonGenerator;
import javax.json.stream.JsonParser;
import javax.json.bind.annotation.JsonbProperty;

/**
  * Describes the result of uploading an image resource
 **/

public class ModelApiResponse  {
  
  @JsonbProperty("code")
  private Integer code;

  @JsonbProperty("type")
  private String type;

  @JsonbProperty("message")
  private String message;

 /**
   * Get code
   * @return code
  **/
  public Integer getCode() {
    return code;
  }

  /**
    * Set code
  **/
  public void setCode(Integer code) {
    this.code = code;
  }

  public ModelApiResponse code(Integer code) {
    this.code = code;
    return this;
  }

 /**
   * Get type
   * @return type
  **/
  public String getType() {
    return type;
  }

  /**
    * Set type
  **/
  public void setType(String type) {
    this.type = type;
  }

  public ModelApiResponse type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Get message
   * @return message
  **/
  public String getMessage() {
    return message;
  }

  /**
    * Set message
  **/
  public void setMessage(String message) {
    this.message = message;
  }

  public ModelApiResponse message(String message) {
    this.message = message;
    return this;
  }


  /**
    * Create a string representation of this pojo.
  **/
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ModelApiResponse {\n");
    
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
