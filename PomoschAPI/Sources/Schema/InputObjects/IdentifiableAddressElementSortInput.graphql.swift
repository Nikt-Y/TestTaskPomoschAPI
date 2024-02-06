// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// Элемент адреса с идентификатором в ФИАС
public struct IdentifiableAddressElementSortInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    id: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    value: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    type: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    fullType: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    valueWithType: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    valueWithFullType: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil
  ) {
    __data = InputDict([
      "id": id,
      "value": value,
      "type": type,
      "fullType": fullType,
      "valueWithType": valueWithType,
      "valueWithFullType": valueWithFullType
    ])
  }

  /// Идентификатор ФИАС элемента адреса
  public var id: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }

  /// Значение элемента (название района, города и т.п)
  public var value: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["value"] }
    set { __data["value"] = newValue }
  }

  /// Тип элемента, сокращённый (г, р-н и т.п.)
  public var type: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["type"] }
    set { __data["type"] = newValue }
  }

  /// Тип элемента, полный (город, район и т.п.)
  public var fullType: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["fullType"] }
    set { __data["fullType"] = newValue }
  }

  /// Значение с сокращённым типом (г Москва, Калужский р-н и т.п.)
  public var valueWithType: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["valueWithType"] }
    set { __data["valueWithType"] = newValue }
  }

  /// Значение с полным типом (город Москва, Калужский район и т.п.)
  public var valueWithFullType: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["valueWithFullType"] }
    set { __data["valueWithFullType"] = newValue }
  }
}
