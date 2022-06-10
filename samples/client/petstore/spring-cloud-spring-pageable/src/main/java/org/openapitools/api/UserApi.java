/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech) (6.0.1-SNAPSHOT).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.api;

import java.util.List;
import java.time.OffsetDateTime;
import org.openapitools.model.User;
import io.swagger.annotations.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import javax.annotation.Generated;

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
@Validated
@Api(value = "User", description = "Operations about user")
public interface UserApi {

    /**
     * POST /user : Create user
     * This can only be done by the logged in user.
     *
     * @param body Created user object (required)
     * @return successful operation (status code 200)
     */
    @ApiOperation(
        tags = { "user" },
        value = "Create user",
        nickname = "createUser",
        notes = "This can only be done by the logged in user."
    )
    @ApiResponses({
        @ApiResponse(code = 200, message = "successful operation")
    })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/user"
    )
    ResponseEntity<Void> createUser(
        @ApiParam(value = "Created user object", required = true) @Valid @RequestBody User body
    );


    /**
     * POST /user/createWithArray : Creates list of users with given input array
     *
     * @param body List of user object (required)
     * @return successful operation (status code 200)
     */
    @ApiOperation(
        tags = { "user" },
        value = "Creates list of users with given input array",
        nickname = "createUsersWithArrayInput",
        notes = ""
    )
    @ApiResponses({
        @ApiResponse(code = 200, message = "successful operation")
    })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/user/createWithArray"
    )
    ResponseEntity<Void> createUsersWithArrayInput(
        @ApiParam(value = "List of user object", required = true) @Valid @RequestBody List<User> body
    );


    /**
     * POST /user/createWithList : Creates list of users with given input array
     *
     * @param body List of user object (required)
     * @return successful operation (status code 200)
     */
    @ApiOperation(
        tags = { "user" },
        value = "Creates list of users with given input array",
        nickname = "createUsersWithListInput",
        notes = ""
    )
    @ApiResponses({
        @ApiResponse(code = 200, message = "successful operation")
    })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/user/createWithList"
    )
    ResponseEntity<Void> createUsersWithListInput(
        @ApiParam(value = "List of user object", required = true) @Valid @RequestBody List<User> body
    );


    /**
     * DELETE /user/{username} : Delete user
     * This can only be done by the logged in user.
     *
     * @param username The name that needs to be deleted (required)
     * @return Invalid username supplied (status code 400)
     *         or User not found (status code 404)
     */
    @ApiOperation(
        tags = { "user" },
        value = "Delete user",
        nickname = "deleteUser",
        notes = "This can only be done by the logged in user."
    )
    @ApiResponses({
        @ApiResponse(code = 400, message = "Invalid username supplied"),
        @ApiResponse(code = 404, message = "User not found")
    })
    @RequestMapping(
        method = RequestMethod.DELETE,
        value = "/user/{username}"
    )
    ResponseEntity<Void> deleteUser(
        @ApiParam(value = "The name that needs to be deleted", required = true) @PathVariable("username") String username
    );


    /**
     * GET /user/{username} : Get user by user name
     *
     * @param username The name that needs to be fetched. Use user1 for testing. (required)
     * @return successful operation (status code 200)
     *         or Invalid username supplied (status code 400)
     *         or User not found (status code 404)
     */
    @ApiOperation(
        tags = { "user" },
        value = "Get user by user name",
        nickname = "getUserByName",
        notes = "",
        response = User.class
    )
    @ApiResponses({
        @ApiResponse(code = 200, message = "successful operation", response = User.class),
        @ApiResponse(code = 400, message = "Invalid username supplied"),
        @ApiResponse(code = 404, message = "User not found")
    })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/user/{username}",
        produces = "application/json"
    )
    ResponseEntity<User> getUserByName(
        @ApiParam(value = "The name that needs to be fetched. Use user1 for testing.", required = true) @PathVariable("username") String username
    );


    /**
     * GET /user/login : Logs user into the system
     *
     * @param username The user name for login (required)
     * @param password The password for login in clear text (required)
     * @return successful operation (status code 200)
     *         or Invalid username/password supplied (status code 400)
     */
    @ApiOperation(
        tags = { "user" },
        value = "Logs user into the system",
        nickname = "loginUser",
        notes = "",
        response = String.class
    )
    @ApiResponses({
        @ApiResponse(code = 200, message = "successful operation", response = String.class),
        @ApiResponse(code = 400, message = "Invalid username/password supplied")
    })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/user/login",
        produces = "application/json"
    )
    ResponseEntity<String> loginUser(
        @NotNull @ApiParam(value = "The user name for login", required = true) @Valid @RequestParam(value = "username", required = true) String username,
        @NotNull @ApiParam(value = "The password for login in clear text", required = true) @Valid @RequestParam(value = "password", required = true) String password
    );


    /**
     * GET /user/logout : Logs out current logged in user session
     *
     * @return successful operation (status code 200)
     */
    @ApiOperation(
        tags = { "user" },
        value = "Logs out current logged in user session",
        nickname = "logoutUser",
        notes = ""
    )
    @ApiResponses({
        @ApiResponse(code = 200, message = "successful operation")
    })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/user/logout"
    )
    ResponseEntity<Void> logoutUser(
        
    );


    /**
     * OPTIONS /user/logout : logoutUserOptions
     *
     * @return endpoint configuration response (status code 200)
     */
    @ApiOperation(
        tags = { "user" },
        value = "logoutUserOptions",
        nickname = "logoutUserOptions",
        notes = ""
    )
    @ApiResponses({
        @ApiResponse(code = 200, message = "endpoint configuration response")
    })
    @RequestMapping(
        method = RequestMethod.OPTIONS,
        value = "/user/logout"
    )
    ResponseEntity<Void> logoutUserOptions(
        
    );


    /**
     * PUT /user/{username} : Updated user
     * This can only be done by the logged in user.
     *
     * @param username name that need to be deleted (required)
     * @param body Updated user object (required)
     * @return Invalid user supplied (status code 400)
     *         or User not found (status code 404)
     */
    @ApiOperation(
        tags = { "user" },
        value = "Updated user",
        nickname = "updateUser",
        notes = "This can only be done by the logged in user."
    )
    @ApiResponses({
        @ApiResponse(code = 400, message = "Invalid user supplied"),
        @ApiResponse(code = 404, message = "User not found")
    })
    @RequestMapping(
        method = RequestMethod.PUT,
        value = "/user/{username}"
    )
    ResponseEntity<Void> updateUser(
        @ApiParam(value = "name that need to be deleted", required = true) @PathVariable("username") String username,
        @ApiParam(value = "Updated user object", required = true) @Valid @RequestBody User body
    );

}
