// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)
        addProduct,
    required TResult Function(String productId, String orangeName,
            String category, bool isAvsilsbility, List<dynamic> iteams)
        updateProduct,
    required TResult Function(String productId) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orangeName, String category, bool isAvsilsbility,
            List<dynamic> iteams)?
        addProduct,
    TResult? Function(String productId, String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)?
        updateProduct,
    TResult? Function(String productId)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orangeName, String category, bool isAvsilsbility,
            List<dynamic> iteams)?
        addProduct,
    TResult Function(String productId, String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)?
        updateProduct,
    TResult Function(String productId)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ProductEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)
        addProduct,
    required TResult Function(String productId, String orangeName,
            String category, bool isAvsilsbility, List<dynamic> iteams)
        updateProduct,
    required TResult Function(String productId) deleteProduct,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orangeName, String category, bool isAvsilsbility,
            List<dynamic> iteams)?
        addProduct,
    TResult? Function(String productId, String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)?
        updateProduct,
    TResult? Function(String productId)? deleteProduct,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orangeName, String category, bool isAvsilsbility,
            List<dynamic> iteams)?
        addProduct,
    TResult Function(String productId, String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)?
        updateProduct,
    TResult Function(String productId)? deleteProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_AddProductCopyWith<$Res> {
  factory _$$_AddProductCopyWith(
          _$_AddProduct value, $Res Function(_$_AddProduct) then) =
      __$$_AddProductCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String orangeName,
      String category,
      bool isAvsilsbility,
      List<dynamic> iteams});
}

/// @nodoc
class __$$_AddProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_AddProduct>
    implements _$$_AddProductCopyWith<$Res> {
  __$$_AddProductCopyWithImpl(
      _$_AddProduct _value, $Res Function(_$_AddProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orangeName = null,
    Object? category = null,
    Object? isAvsilsbility = null,
    Object? iteams = null,
  }) {
    return _then(_$_AddProduct(
      null == orangeName
          ? _value.orangeName
          : orangeName // ignore: cast_nullable_to_non_nullable
              as String,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == isAvsilsbility
          ? _value.isAvsilsbility
          : isAvsilsbility // ignore: cast_nullable_to_non_nullable
              as bool,
      null == iteams
          ? _value._iteams
          : iteams // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_AddProduct implements _AddProduct {
  const _$_AddProduct(this.orangeName, this.category, this.isAvsilsbility,
      final List<dynamic> iteams)
      : _iteams = iteams;

  @override
  final String orangeName;
  @override
  final String category;
  @override
  final bool isAvsilsbility;
  final List<dynamic> _iteams;
  @override
  List<dynamic> get iteams {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_iteams);
  }

  @override
  String toString() {
    return 'ProductEvent.addProduct(orangeName: $orangeName, category: $category, isAvsilsbility: $isAvsilsbility, iteams: $iteams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProduct &&
            (identical(other.orangeName, orangeName) ||
                other.orangeName == orangeName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isAvsilsbility, isAvsilsbility) ||
                other.isAvsilsbility == isAvsilsbility) &&
            const DeepCollectionEquality().equals(other._iteams, _iteams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orangeName, category,
      isAvsilsbility, const DeepCollectionEquality().hash(_iteams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddProductCopyWith<_$_AddProduct> get copyWith =>
      __$$_AddProductCopyWithImpl<_$_AddProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)
        addProduct,
    required TResult Function(String productId, String orangeName,
            String category, bool isAvsilsbility, List<dynamic> iteams)
        updateProduct,
    required TResult Function(String productId) deleteProduct,
  }) {
    return addProduct(orangeName, category, isAvsilsbility, iteams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orangeName, String category, bool isAvsilsbility,
            List<dynamic> iteams)?
        addProduct,
    TResult? Function(String productId, String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)?
        updateProduct,
    TResult? Function(String productId)? deleteProduct,
  }) {
    return addProduct?.call(orangeName, category, isAvsilsbility, iteams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orangeName, String category, bool isAvsilsbility,
            List<dynamic> iteams)?
        addProduct,
    TResult Function(String productId, String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)?
        updateProduct,
    TResult Function(String productId)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(orangeName, category, isAvsilsbility, iteams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProduct implements ProductEvent {
  const factory _AddProduct(final String orangeName, final String category,
      final bool isAvsilsbility, final List<dynamic> iteams) = _$_AddProduct;

  String get orangeName;
  String get category;
  bool get isAvsilsbility;
  List<dynamic> get iteams;
  @JsonKey(ignore: true)
  _$$_AddProductCopyWith<_$_AddProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateProductCopyWith<$Res> {
  factory _$$_UpdateProductCopyWith(
          _$_UpdateProduct value, $Res Function(_$_UpdateProduct) then) =
      __$$_UpdateProductCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String productId,
      String orangeName,
      String category,
      bool isAvsilsbility,
      List<dynamic> iteams});
}

/// @nodoc
class __$$_UpdateProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_UpdateProduct>
    implements _$$_UpdateProductCopyWith<$Res> {
  __$$_UpdateProductCopyWithImpl(
      _$_UpdateProduct _value, $Res Function(_$_UpdateProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? orangeName = null,
    Object? category = null,
    Object? isAvsilsbility = null,
    Object? iteams = null,
  }) {
    return _then(_$_UpdateProduct(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      orangeName: null == orangeName
          ? _value.orangeName
          : orangeName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      isAvsilsbility: null == isAvsilsbility
          ? _value.isAvsilsbility
          : isAvsilsbility // ignore: cast_nullable_to_non_nullable
              as bool,
      iteams: null == iteams
          ? _value._iteams
          : iteams // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_UpdateProduct implements _UpdateProduct {
  const _$_UpdateProduct(
      {required this.productId,
      required this.orangeName,
      required this.category,
      required this.isAvsilsbility,
      required final List<dynamic> iteams})
      : _iteams = iteams;

  @override
  final String productId;
  @override
  final String orangeName;
  @override
  final String category;
  @override
  final bool isAvsilsbility;
  final List<dynamic> _iteams;
  @override
  List<dynamic> get iteams {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_iteams);
  }

  @override
  String toString() {
    return 'ProductEvent.updateProduct(productId: $productId, orangeName: $orangeName, category: $category, isAvsilsbility: $isAvsilsbility, iteams: $iteams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProduct &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.orangeName, orangeName) ||
                other.orangeName == orangeName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isAvsilsbility, isAvsilsbility) ||
                other.isAvsilsbility == isAvsilsbility) &&
            const DeepCollectionEquality().equals(other._iteams, _iteams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, orangeName, category,
      isAvsilsbility, const DeepCollectionEquality().hash(_iteams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProductCopyWith<_$_UpdateProduct> get copyWith =>
      __$$_UpdateProductCopyWithImpl<_$_UpdateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)
        addProduct,
    required TResult Function(String productId, String orangeName,
            String category, bool isAvsilsbility, List<dynamic> iteams)
        updateProduct,
    required TResult Function(String productId) deleteProduct,
  }) {
    return updateProduct(
        productId, orangeName, category, isAvsilsbility, iteams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orangeName, String category, bool isAvsilsbility,
            List<dynamic> iteams)?
        addProduct,
    TResult? Function(String productId, String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)?
        updateProduct,
    TResult? Function(String productId)? deleteProduct,
  }) {
    return updateProduct?.call(
        productId, orangeName, category, isAvsilsbility, iteams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orangeName, String category, bool isAvsilsbility,
            List<dynamic> iteams)?
        addProduct,
    TResult Function(String productId, String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)?
        updateProduct,
    TResult Function(String productId)? deleteProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(
          productId, orangeName, category, isAvsilsbility, iteams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return updateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) {
    return updateProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(this);
    }
    return orElse();
  }
}

abstract class _UpdateProduct implements ProductEvent {
  const factory _UpdateProduct(
      {required final String productId,
      required final String orangeName,
      required final String category,
      required final bool isAvsilsbility,
      required final List<dynamic> iteams}) = _$_UpdateProduct;

  String get productId;
  String get orangeName;
  String get category;
  bool get isAvsilsbility;
  List<dynamic> get iteams;
  @JsonKey(ignore: true)
  _$$_UpdateProductCopyWith<_$_UpdateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteProductCopyWith<$Res> {
  factory _$$_DeleteProductCopyWith(
          _$_DeleteProduct value, $Res Function(_$_DeleteProduct) then) =
      __$$_DeleteProductCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$_DeleteProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_DeleteProduct>
    implements _$$_DeleteProductCopyWith<$Res> {
  __$$_DeleteProductCopyWithImpl(
      _$_DeleteProduct _value, $Res Function(_$_DeleteProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$_DeleteProduct(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteProduct implements _DeleteProduct {
  const _$_DeleteProduct(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'ProductEvent.deleteProduct(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteProduct &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteProductCopyWith<_$_DeleteProduct> get copyWith =>
      __$$_DeleteProductCopyWithImpl<_$_DeleteProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)
        addProduct,
    required TResult Function(String productId, String orangeName,
            String category, bool isAvsilsbility, List<dynamic> iteams)
        updateProduct,
    required TResult Function(String productId) deleteProduct,
  }) {
    return deleteProduct(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orangeName, String category, bool isAvsilsbility,
            List<dynamic> iteams)?
        addProduct,
    TResult? Function(String productId, String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)?
        updateProduct,
    TResult? Function(String productId)? deleteProduct,
  }) {
    return deleteProduct?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orangeName, String category, bool isAvsilsbility,
            List<dynamic> iteams)?
        addProduct,
    TResult Function(String productId, String orangeName, String category,
            bool isAvsilsbility, List<dynamic> iteams)?
        updateProduct,
    TResult Function(String productId)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class _DeleteProduct implements ProductEvent {
  const factory _DeleteProduct(final String productId) = _$_DeleteProduct;

  String get productId;
  @JsonKey(ignore: true)
  _$$_DeleteProductCopyWith<_$_DeleteProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProductState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'ProductState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ProductState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Failure(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ProductState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ProductState {
  const factory _Failure({required final String error}) = _$_Failure;

  String get error;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
