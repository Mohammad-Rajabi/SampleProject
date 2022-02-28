// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String name,
      required String guid,
      required bool isOwner,
      required String gender,
      String? balance,
      String? picture,
      int? age,
      String? email,
      String? phone,
      String? address,
      String? company,
      String? about,
      String? greeting,
      String? favoriteFruit,
      String? registered,
      double? latitude,
      double? longitude,
      List<String> tags = const [],
      List<Friend> friends = const []}) {
    return _User(
      name: name,
      guid: guid,
      isOwner: isOwner,
      gender: gender,
      balance: balance,
      picture: picture,
      age: age,
      email: email,
      phone: phone,
      address: address,
      company: company,
      about: about,
      greeting: greeting,
      favoriteFruit: favoriteFruit,
      registered: registered,
      latitude: latitude,
      longitude: longitude,
      tags: tags,
      friends: friends,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get name => throw _privateConstructorUsedError;
  String get guid => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String? get balance => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get greeting => throw _privateConstructorUsedError;
  String? get favoriteFruit => throw _privateConstructorUsedError;
  String? get registered => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<Friend> get friends => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String guid,
      bool isOwner,
      String gender,
      String? balance,
      String? picture,
      int? age,
      String? email,
      String? phone,
      String? address,
      String? company,
      String? about,
      String? greeting,
      String? favoriteFruit,
      String? registered,
      double? latitude,
      double? longitude,
      List<String> tags,
      List<Friend> friends});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? guid = freezed,
    Object? isOwner = freezed,
    Object? gender = freezed,
    Object? balance = freezed,
    Object? picture = freezed,
    Object? age = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? company = freezed,
    Object? about = freezed,
    Object? greeting = freezed,
    Object? favoriteFruit = freezed,
    Object? registered = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? tags = freezed,
    Object? friends = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      greeting: greeting == freezed
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteFruit: favoriteFruit == freezed
          ? _value.favoriteFruit
          : favoriteFruit // ignore: cast_nullable_to_non_nullable
              as String?,
      registered: registered == freezed
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<Friend>,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String guid,
      bool isOwner,
      String gender,
      String? balance,
      String? picture,
      int? age,
      String? email,
      String? phone,
      String? address,
      String? company,
      String? about,
      String? greeting,
      String? favoriteFruit,
      String? registered,
      double? latitude,
      double? longitude,
      List<String> tags,
      List<Friend> friends});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? name = freezed,
    Object? guid = freezed,
    Object? isOwner = freezed,
    Object? gender = freezed,
    Object? balance = freezed,
    Object? picture = freezed,
    Object? age = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? company = freezed,
    Object? about = freezed,
    Object? greeting = freezed,
    Object? favoriteFruit = freezed,
    Object? registered = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? tags = freezed,
    Object? friends = freezed,
  }) {
    return _then(_User(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      greeting: greeting == freezed
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteFruit: favoriteFruit == freezed
          ? _value.favoriteFruit
          : favoriteFruit // ignore: cast_nullable_to_non_nullable
              as String?,
      registered: registered == freezed
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<Friend>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {required this.name,
      required this.guid,
      required this.isOwner,
      required this.gender,
      this.balance,
      this.picture,
      this.age,
      this.email,
      this.phone,
      this.address,
      this.company,
      this.about,
      this.greeting,
      this.favoriteFruit,
      this.registered,
      this.latitude,
      this.longitude,
      this.tags = const [],
      this.friends = const []});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String name;
  @override
  final String guid;
  @override
  final bool isOwner;
  @override
  final String gender;
  @override
  final String? balance;
  @override
  final String? picture;
  @override
  final int? age;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final String? company;
  @override
  final String? about;
  @override
  final String? greeting;
  @override
  final String? favoriteFruit;
  @override
  final String? registered;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @JsonKey()
  @override
  final List<String> tags;
  @JsonKey()
  @override
  final List<Friend> friends;

  @override
  String toString() {
    return 'User(name: $name, guid: $guid, isOwner: $isOwner, gender: $gender, balance: $balance, picture: $picture, age: $age, email: $email, phone: $phone, address: $address, company: $company, about: $about, greeting: $greeting, favoriteFruit: $favoriteFruit, registered: $registered, latitude: $latitude, longitude: $longitude, tags: $tags, friends: $friends)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.guid, guid) &&
            const DeepCollectionEquality().equals(other.isOwner, isOwner) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality().equals(other.greeting, greeting) &&
            const DeepCollectionEquality()
                .equals(other.favoriteFruit, favoriteFruit) &&
            const DeepCollectionEquality()
                .equals(other.registered, registered) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.friends, friends));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(guid),
        const DeepCollectionEquality().hash(isOwner),
        const DeepCollectionEquality().hash(gender),
        const DeepCollectionEquality().hash(balance),
        const DeepCollectionEquality().hash(picture),
        const DeepCollectionEquality().hash(age),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(phone),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(company),
        const DeepCollectionEquality().hash(about),
        const DeepCollectionEquality().hash(greeting),
        const DeepCollectionEquality().hash(favoriteFruit),
        const DeepCollectionEquality().hash(registered),
        const DeepCollectionEquality().hash(latitude),
        const DeepCollectionEquality().hash(longitude),
        const DeepCollectionEquality().hash(tags),
        const DeepCollectionEquality().hash(friends)
      ]);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      {required String name,
      required String guid,
      required bool isOwner,
      required String gender,
      String? balance,
      String? picture,
      int? age,
      String? email,
      String? phone,
      String? address,
      String? company,
      String? about,
      String? greeting,
      String? favoriteFruit,
      String? registered,
      double? latitude,
      double? longitude,
      List<String> tags,
      List<Friend> friends}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get name;
  @override
  String get guid;
  @override
  bool get isOwner;
  @override
  String get gender;
  @override
  String? get balance;
  @override
  String? get picture;
  @override
  int? get age;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  String? get company;
  @override
  String? get about;
  @override
  String? get greeting;
  @override
  String? get favoriteFruit;
  @override
  String? get registered;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  List<String> get tags;
  @override
  List<Friend> get friends;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
