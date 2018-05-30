import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_model.g.dart';

abstract class ProductListResponse implements Built<ProductListResponse, ProductListResponseBuilder> {

  BuiltList<ProductEntity> get data;

  ProductListResponse._();
  factory ProductListResponse([updates(ProductListResponseBuilder b)]) = _$ProductListResponse;
  static Serializer<ProductListResponse> get serializer => _$productListResponseSerializer;
}

abstract class ProductItemResponse implements Built<ProductItemResponse, ProductItemResponseBuilder> {

  ProductEntity get data;

  ProductItemResponse._();
  factory ProductItemResponse([updates(ProductItemResponseBuilder b)]) = _$ProductItemResponse;
  static Serializer<ProductItemResponse> get serializer => _$productItemResponseSerializer;
}

class ProductFields {
  static String productKey = 'productKey';
  static String notes = 'notes';
  static String cost = 'cost';
  static String updatedAt = 'updatedAt';
  static String archivedAt = 'archivedAt';
  static String isDeleted = 'isDeleted';
}

abstract class ProductEntity implements Built<ProductEntity, ProductEntityBuilder> {

  @nullable
  int get id;

  @nullable
  @BuiltValueField(wireName: 'product_key')
  String get productKey;

  @nullable
  String get notes;

  @nullable
  double get cost;

  @nullable
  @BuiltValueField(wireName: 'updated_at')
  int get updatedAt;

  @nullable
  @BuiltValueField(wireName: 'archived_at')
  int get archivedAt;

  @nullable
  @BuiltValueField(wireName: 'is_deleted')
  bool get isDeleted;

  //@JsonKey(name: 'tax_name1')
  //String taxName1;
  //@JsonKey(name: 'tax_rate1')
  //double taxRate1;
  //@JsonKey(name: 'tax_name2')
  //String taxName2;
  //@JsonKey(name: 'tax_rate2')
  //double taxRate2;
  //@JsonKey(name: 'custom_value1')
  //String customValue1;
  //@JsonKey(name: 'custom_value2')
  //String customValue2;

  ProductEntity._();
  factory ProductEntity([updates(ProductEntityBuilder b)]) = _$ProductEntity;
  static Serializer<ProductEntity> get serializer => _$productEntitySerializer;
}
