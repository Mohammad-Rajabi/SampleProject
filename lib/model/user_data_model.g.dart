// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      name: json['name'] as String,
      guid: json['guid'] as String,
      isOwner: json['isOwner'] as bool,
      gender: json['gender'] as String,
      balance: json['balance'] as String?,
      picture: json['picture'] as String?,
      age: json['age'] as int?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      company: json['company'] as String?,
      about: json['about'] as String?,
      greeting: json['greeting'] as String?,
      favoriteFruit: json['favoriteFruit'] as String?,
      registered: json['registered'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      friends: (json['friends'] as List<dynamic>?)
              ?.map((e) => Friend.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'guid': instance.guid,
      'isOwner': instance.isOwner,
      'gender': instance.gender,
      'balance': instance.balance,
      'picture': instance.picture,
      'age': instance.age,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'company': instance.company,
      'about': instance.about,
      'greeting': instance.greeting,
      'favoriteFruit': instance.favoriteFruit,
      'registered': instance.registered,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'tags': instance.tags,
      'friends': instance.friends,
    };
