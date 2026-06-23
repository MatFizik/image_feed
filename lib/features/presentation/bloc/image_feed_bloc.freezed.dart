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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageFeedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageFeedEvent()';
}


}

/// @nodoc
class $ImageFeedEventCopyWith<$Res>  {
$ImageFeedEventCopyWith(ImageFeedEvent _, $Res Function(ImageFeedEvent) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchPhotos value)?  fetchPhotos,TResult Function( _LoadMorePhotos value)?  loadMorePhotos,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchPhotos() when fetchPhotos != null:
return fetchPhotos(_that);case _LoadMorePhotos() when loadMorePhotos != null:
return loadMorePhotos(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchPhotos value)  fetchPhotos,required TResult Function( _LoadMorePhotos value)  loadMorePhotos,}){
final _that = this;
switch (_that) {
case _FetchPhotos():
return fetchPhotos(_that);case _LoadMorePhotos():
return loadMorePhotos(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchPhotos value)?  fetchPhotos,TResult? Function( _LoadMorePhotos value)?  loadMorePhotos,}){
final _that = this;
switch (_that) {
case _FetchPhotos() when fetchPhotos != null:
return fetchPhotos(_that);case _LoadMorePhotos() when loadMorePhotos != null:
return loadMorePhotos(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page)?  fetchPhotos,TResult Function()?  loadMorePhotos,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchPhotos() when fetchPhotos != null:
return fetchPhotos(_that.page);case _LoadMorePhotos() when loadMorePhotos != null:
return loadMorePhotos();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page)  fetchPhotos,required TResult Function()  loadMorePhotos,}) {final _that = this;
switch (_that) {
case _FetchPhotos():
return fetchPhotos(_that.page);case _LoadMorePhotos():
return loadMorePhotos();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page)?  fetchPhotos,TResult? Function()?  loadMorePhotos,}) {final _that = this;
switch (_that) {
case _FetchPhotos() when fetchPhotos != null:
return fetchPhotos(_that.page);case _LoadMorePhotos() when loadMorePhotos != null:
return loadMorePhotos();case _:
  return null;

}
}

}

/// @nodoc


class _FetchPhotos implements ImageFeedEvent {
  const _FetchPhotos({required this.page});
  

 final  int page;

/// Create a copy of ImageFeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
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
@useResult
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
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_FetchPhotos(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadMorePhotos implements ImageFeedEvent {
  const _LoadMorePhotos();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMorePhotos);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageFeedEvent.loadMorePhotos()';
}


}




/// @nodoc
mixin _$ImageFeedState {

 List<Photo>? get photos; int? get currentPage; int? get totalPhotos; bool? get isLoading; bool? get isLoadingMore; String? get errorMessage;
/// Create a copy of ImageFeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageFeedStateCopyWith<ImageFeedState> get copyWith => _$ImageFeedStateCopyWithImpl<ImageFeedState>(this as ImageFeedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageFeedState&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPhotos, totalPhotos) || other.totalPhotos == totalPhotos)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(photos),currentPage,totalPhotos,isLoading,isLoadingMore,errorMessage);

@override
String toString() {
  return 'ImageFeedState(photos: $photos, currentPage: $currentPage, totalPhotos: $totalPhotos, isLoading: $isLoading, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ImageFeedStateCopyWith<$Res>  {
  factory $ImageFeedStateCopyWith(ImageFeedState value, $Res Function(ImageFeedState) _then) = _$ImageFeedStateCopyWithImpl;
@useResult
$Res call({
 List<Photo>? photos, int? currentPage, int? totalPhotos, bool? isLoading, bool? isLoadingMore, String? errorMessage
});




}
/// @nodoc
class _$ImageFeedStateCopyWithImpl<$Res>
    implements $ImageFeedStateCopyWith<$Res> {
  _$ImageFeedStateCopyWithImpl(this._self, this._then);

  final ImageFeedState _self;
  final $Res Function(ImageFeedState) _then;

/// Create a copy of ImageFeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? photos = freezed,Object? currentPage = freezed,Object? totalPhotos = freezed,Object? isLoading = freezed,Object? isLoadingMore = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<Photo>?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalPhotos: freezed == totalPhotos ? _self.totalPhotos : totalPhotos // ignore: cast_nullable_to_non_nullable
as int?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,isLoadingMore: freezed == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageFeedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageFeedState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageFeedState value)  $default,){
final _that = this;
switch (_that) {
case _ImageFeedState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageFeedState value)?  $default,){
final _that = this;
switch (_that) {
case _ImageFeedState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Photo>? photos,  int? currentPage,  int? totalPhotos,  bool? isLoading,  bool? isLoadingMore,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageFeedState() when $default != null:
return $default(_that.photos,_that.currentPage,_that.totalPhotos,_that.isLoading,_that.isLoadingMore,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Photo>? photos,  int? currentPage,  int? totalPhotos,  bool? isLoading,  bool? isLoadingMore,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ImageFeedState():
return $default(_that.photos,_that.currentPage,_that.totalPhotos,_that.isLoading,_that.isLoadingMore,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Photo>? photos,  int? currentPage,  int? totalPhotos,  bool? isLoading,  bool? isLoadingMore,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ImageFeedState() when $default != null:
return $default(_that.photos,_that.currentPage,_that.totalPhotos,_that.isLoading,_that.isLoadingMore,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ImageFeedState implements ImageFeedState {
  const _ImageFeedState({final  List<Photo>? photos, this.currentPage, this.totalPhotos, this.isLoading, this.isLoadingMore, this.errorMessage}): _photos = photos;
  

 final  List<Photo>? _photos;
@override List<Photo>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? currentPage;
@override final  int? totalPhotos;
@override final  bool? isLoading;
@override final  bool? isLoadingMore;
@override final  String? errorMessage;

/// Create a copy of ImageFeedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageFeedStateCopyWith<_ImageFeedState> get copyWith => __$ImageFeedStateCopyWithImpl<_ImageFeedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageFeedState&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPhotos, totalPhotos) || other.totalPhotos == totalPhotos)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_photos),currentPage,totalPhotos,isLoading,isLoadingMore,errorMessage);

@override
String toString() {
  return 'ImageFeedState(photos: $photos, currentPage: $currentPage, totalPhotos: $totalPhotos, isLoading: $isLoading, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ImageFeedStateCopyWith<$Res> implements $ImageFeedStateCopyWith<$Res> {
  factory _$ImageFeedStateCopyWith(_ImageFeedState value, $Res Function(_ImageFeedState) _then) = __$ImageFeedStateCopyWithImpl;
@override @useResult
$Res call({
 List<Photo>? photos, int? currentPage, int? totalPhotos, bool? isLoading, bool? isLoadingMore, String? errorMessage
});




}
/// @nodoc
class __$ImageFeedStateCopyWithImpl<$Res>
    implements _$ImageFeedStateCopyWith<$Res> {
  __$ImageFeedStateCopyWithImpl(this._self, this._then);

  final _ImageFeedState _self;
  final $Res Function(_ImageFeedState) _then;

/// Create a copy of ImageFeedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? photos = freezed,Object? currentPage = freezed,Object? totalPhotos = freezed,Object? isLoading = freezed,Object? isLoadingMore = freezed,Object? errorMessage = freezed,}) {
  return _then(_ImageFeedState(
photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<Photo>?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalPhotos: freezed == totalPhotos ? _self.totalPhotos : totalPhotos // ignore: cast_nullable_to_non_nullable
as int?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,isLoadingMore: freezed == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
