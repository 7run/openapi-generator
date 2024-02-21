/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

#include "OpenAPIPet.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI
{

inline FString ToString(const OpenAPIPet::StatusEnum& Value)
{
	switch (Value)
	{
	case OpenAPIPet::StatusEnum::Available:
		return TEXT("available");
	case OpenAPIPet::StatusEnum::Pending:
		return TEXT("pending");
	case OpenAPIPet::StatusEnum::Sold:
		return TEXT("sold");
	}

	UE_LOG(LogOpenAPI, Error, TEXT("Invalid OpenAPIPet::StatusEnum Value (%d)"), (int)Value);
	return TEXT("");
}

FString OpenAPIPet::EnumToString(const OpenAPIPet::StatusEnum& EnumValue)
{
	return ToString(EnumValue);
}

inline bool FromString(const FString& EnumAsString, OpenAPIPet::StatusEnum& Value)
{
	static TMap<FString, OpenAPIPet::StatusEnum> StringToEnum = { 
		{ TEXT("available"), OpenAPIPet::StatusEnum::Available },
		{ TEXT("pending"), OpenAPIPet::StatusEnum::Pending },
		{ TEXT("sold"), OpenAPIPet::StatusEnum::Sold }, };

	const auto Found = StringToEnum.Find(EnumAsString);
	if(Found)
		Value = *Found;

	return Found != nullptr;
}

bool OpenAPIPet::EnumFromString(const FString& EnumAsString, OpenAPIPet::StatusEnum& EnumValue)
{
	return FromString(EnumAsString, EnumValue);
}

inline void WriteJsonValue(JsonWriter& Writer, const OpenAPIPet::StatusEnum& Value)
{
	WriteJsonValue(Writer, ToString(Value));
}

inline bool TryGetJsonValue(const TSharedPtr<FJsonValue>& JsonValue, OpenAPIPet::StatusEnum& Value)
{
	FString TmpValue;
	if (JsonValue->TryGetString(TmpValue))
	{
		if(FromString(TmpValue, Value))
			return true;
	}
	return false;
}

void OpenAPIPet::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	if (Id.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("id")); WriteJsonValue(Writer, Id.GetValue());
	}
	if (Category.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("category")); WriteJsonValue(Writer, Category.GetValue());
	}
	Writer->WriteIdentifierPrefix(TEXT("name")); WriteJsonValue(Writer, Name);
	Writer->WriteIdentifierPrefix(TEXT("photoUrls")); WriteJsonValue(Writer, PhotoUrls);
	if (Tags.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("tags")); WriteJsonValue(Writer, Tags.GetValue());
	}
	if (Status.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("status")); WriteJsonValue(Writer, Status.GetValue());
	}
	Writer->WriteObjectEnd();
}

bool OpenAPIPet::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("id"), Id);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("category"), Category);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("name"), Name);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("photoUrls"), PhotoUrls);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("tags"), Tags);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("status"), Status);

	return ParseSuccess;
}

}
