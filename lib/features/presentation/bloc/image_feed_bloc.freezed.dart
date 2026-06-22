// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageFeedEvent {

 int get page;
/// Create a copy of ImageFeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageFeedEventCopyWith<ImageFeedEvent> get copyWith => _$ImageFeedEventCopyWithImpl<ImageFeedEvent>(this as ImageFeedEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageFeedEvent&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'ImageFeedEvent(page: $page)';
}


}

/// @nodoc
abstract mixin class $ImageFeedEventCopyWith<$Res>  {
  factory $ImageFeedEventCopyWith(ImageFeedEvent value, $Res Function(ImageFeedEvent) _then) = _$ImageFeedEventCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class _$ImageFeedEventCopyWithImpl<$Res>
    implements $ImageFeedEventCopyWith<$Res> {
  _$ImageFeedEventCopyWithImpl(this._self, this._then);

  final ImageFeedEvent _self;
  final $Res Function(ImageFeedEvent) _then;

/// Create a copy of ImageFeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageFeedEvent].
extension ImageFeedEventPatterns on ImageFeedEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchPhotos value)?  fetchPhotos,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchPhotos() when fetchPhotos != null:
return fetchPhotos(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchPhotos value)  fetchPhotos,}){
final _that = this;
switch (_that) {
case _FetchPhotos():
return fetchPhotos(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchPhotos value)?  fetchPhotos,}){
final _that = this;
switch (_that) {
case _FetchPhotos() when fetchPhotos != null:
return fetchPhotos(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page)?  fetchPhotos,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchPhotos() when fetchPhotos != null:
return fetchPhotos(_that.page);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page)  fetchPhotos,}) {final _that = this;
switch (_that) {
case _FetchPhotos():
return fetchPhotos(_that.page);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page)?  fetchPhotos,}) {final _that = this;
switch (_that) {
case _FetchPhotos() when fetchPhotos != null:
return fetchPhotos(_that.page);case _:
  return null;

}
}

}

/// @nodoc


class _FetchPhotos implements ImageFeedEvent {
  const _FetchPhotos({required this.page});
  

@override final  int page;

/// Create a copy of ImageFeedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchPhotosCopyWith<_FetchPhotos> get copyWith => __$FetchPhotosCopyWithImpl<_FetchPhotos>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchPhotos&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'ImageFeedEvent.fetchPhotos(page: $page)';
}


}

/// @nodoc
abstract mixin class _$FetchPhotosCopyWith<$Res> implements $ImageFeedEventCopyWith<$Res> {
  factory _$FetchPhotosCopyWith(_FetchPhotos value, $Res Function(_FetchPhotos) _then) = __$FetchPhotosCopyWithImpl;
@override @useResult
$Res call({
 int page
});




}
/// @nodoc
class __$FetchPhotosCopyWithImpl<$Res>
    implements _$FetchPhotosCopyWith<$Res> {
  __$FetchPhotosCopyWithImpl(this._self, this._then);

  final _FetchPhotos _self;
  final $Res Function(_FetchPhotos) _then;

/// Create a copy of ImageFeedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_FetchPhotos(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ImageFeedState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageFeedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageFeedState()';
}


}

/// @nodoc
class $ImageFeedStateCopyWith<$Res>  {
$ImageFeedStateCopyWith(ImageFeedState _, $Res Function(ImageFeedState) __);
}


/// Adds pattern-matching-related methods to [ImageFeedState].
extension ImageFeedStatePatterns on ImageFeedState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingPhotos value)?  loadingPhotos,TResult Function( LoadedPhotos value)?  loadedPhotos,TResult Function( ErrorPhotos value)?  errorPhotos,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingPhotos() when loadingPhotos != null:
return loadingPhotos(_that);case LoadedPhotos() when loadedPhotos != null:
return loadedPhotos(_that);case ErrorPhotos() when errorPhotos != null:
return errorPhotos(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingPhotos value)  loadingPhotos,required TResult Function( LoadedPhotos value)  loadedPhotos,required TResult Function( ErrorPhotos value)  errorPhotos,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingPhotos():
return loadingPhotos(_that);case LoadedPhotos():
return loadedPhotos(_that);case ErrorPhotos():
return errorPhotos(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingPhotos value)?  loadingPhotos,TResult? Function( LoadedPhotos value)?  loadedPhotos,TResult? Function( ErrorPhotos value)?  errorPhotos,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingPhotos() when loadingPhotos != null:
return loadingPhotos(_that);case LoadedPhotos() when loadedPhotos != null:
return loadedPhotos(_that);case ErrorPhotos() when errorPhotos != null:
return errorPhotos(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingPhotos,TResult Function( List<Photo> photos)?  loadedPhotos,TResult Function( String message)?  errorPhotos,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingPhotos() when loadingPhotos != null:
return loadingPhotos();case LoadedPhotos() when loadedPhotos != null:
return loadedPhotos(_that.photos);case ErrorPhotos() when errorPhotos != null:
return errorPhotos(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingPhotos,required TResult Function( List<Photo> photos)  loadedPhotos,required TResult Function( String message)  errorPhotos,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingPhotos():
return loadingPhotos();case LoadedPhotos():
return loadedPhotos(_that.photos);case ErrorPhotos():
return errorPhotos(_that.message);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingPhotos,TResult? Function( List<Photo> photos)?  loadedPhotos,TResult? Function( String message)?  errorPhotos,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingPhotos() when loadingPhotos != null:
return loadingPhotos();case LoadedPhotos() when loadedPhotos != null:
return loadedPhotos(_that.photos);case ErrorPhotos() when errorPhotos != null:
return errorPhotos(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements ImageFeedState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageFeedState.initial()';
}


}




/// @nodoc


class LoadingPhotos implements ImageFeedState {
  const LoadingPhotos();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingPhotos);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageFeedState.loadingPhotos()';
}


}




/// @nodoc


class LoadedPhotos implements ImageFeedState {
  const LoadedPhotos({required final  List<Photo> photos}): _photos = photos;
  

 final  List<Photo> _photos;
 List<Photo> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}


/// Create a copy of ImageFeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedPhotosCopyWith<LoadedPhotos> get copyWith => _$LoadedPhotosCopyWithImpl<LoadedPhotos>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedPhotos&&const DeepCollectionEquality().equals(other._photos, _photos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_photos));

@override
String toString() {
  return 'ImageFeedState.loadedPhotos(photos: $photos)';
}


}

/// @nodoc
abstract mixin class $LoadedPhotosCopyWith<$Res> implements $ImageFeedStateCopyWith<$Res> {
  factory $LoadedPhotosCopyWith(LoadedPhotos value, $Res Function(LoadedPhotos) _then) = _$LoadedPhotosCopyWithImpl;
@useResult
$Res call({
 List<Photo> photos
});




}
/// @nodoc
class _$LoadedPhotosCopyWithImpl<$Res>
    implements $LoadedPhotosCopyWith<$Res> {
  _$LoadedPhotosCopyWithImpl(this._self, this._then);

  final LoadedPhotos _self;
  final $Res Function(LoadedPhotos) _then;

/// Create a copy of ImageFeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? photos = null,}) {
  return _then(LoadedPhotos(
photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<Photo>,
  ));
}


}

/// @nodoc


class ErrorPhotos implements ImageFeedState {
  const ErrorPhotos({required this.message});
  

 final  String message;

/// Create a copy of ImageFeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorPhotosCopyWith<ErrorPhotos> get copyWith => _$ErrorPhotosCopyWithImpl<ErrorPhotos>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorPhotos&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ImageFeedState.errorPhotos(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorPhotosCopyWith<$Res> implements $ImageFeedStateCopyWith<$Res> {
  factory $ErrorPhotosCopyWith(ErrorPhotos value, $Res Function(ErrorPhotos) _then) = _$ErrorPhotosCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorPhotosCopyWithImpl<$Res>
    implements $ErrorPhotosCopyWith<$Res> {
  _$ErrorPhotosCopyWithImpl(this._self, this._then);

  final ErrorPhotos _self;
  final $Res Function(ErrorPhotos) _then;

/// Create a copy of ImageFeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorPhotos(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
