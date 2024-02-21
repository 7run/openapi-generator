/*
 * ByRefOrValue
 *
 * This tests for a oneOf interface representation 
 *
 * The version of the OpenAPI document: 0.0.1
 * 
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct Foo {
    #[serde(rename = "fooPropA", skip_serializing_if = "Option::is_none")]
    pub foo_prop_a: Option<String>,
    #[serde(rename = "fooPropB", skip_serializing_if = "Option::is_none")]
    pub foo_prop_b: Option<String>,
    /// Hyperlink reference
    #[serde(rename = "href", skip_serializing_if = "Option::is_none")]
    pub href: Option<String>,
    /// unique identifier
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<String>,
    /// A URI to a JSON-Schema file that defines additional attributes and relationships
    #[serde(rename = "@schemaLocation", skip_serializing_if = "Option::is_none")]
    pub at_schema_location: Option<String>,
    /// When sub-classing, this defines the super-class
    #[serde(rename = "@baseType", skip_serializing_if = "Option::is_none")]
    pub at_base_type: Option<String>,
    /// When sub-classing, this defines the sub-class Extensible name
    #[serde(rename = "@type")]
    pub at_type: String,
}

impl Foo {
    pub fn new(at_type: String) -> Foo {
        Foo {
            foo_prop_a: None,
            foo_prop_b: None,
            href: None,
            id: None,
            at_schema_location: None,
            at_base_type: None,
            at_type,
        }
    }
}


