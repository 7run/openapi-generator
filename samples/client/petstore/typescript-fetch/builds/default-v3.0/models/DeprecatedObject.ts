/* tslint:disable */
/* eslint-disable */
/**
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { exists, mapValues } from '../runtime';
/**
 * 
 * @export
 * @interface DeprecatedObject
 */
export interface DeprecatedObject {
    /**
     * 
     * @type {string}
     * @memberof DeprecatedObject
     */
    name?: string;
}

/**
 * Check if a given object implements the DeprecatedObject interface.
 */
export function instanceOfDeprecatedObject(value: object): boolean {
    return true;
}

export function DeprecatedObjectFromJSON(json: any): DeprecatedObject {
    return DeprecatedObjectFromJSONTyped(json, false);
}

export function DeprecatedObjectFromJSONTyped(json: any, ignoreDiscriminator: boolean): DeprecatedObject {
    if (json === undefined || json === null) {
        return json;
    }
    return {
        
        'name': !exists(json, 'name') ? undefined : json['name'],
    };
}

export function DeprecatedObjectToJSON(value?: DeprecatedObject | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'name': value['name'],
    };
}

