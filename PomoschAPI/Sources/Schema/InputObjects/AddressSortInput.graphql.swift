// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// Адрес
public struct AddressSortInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    displayText: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    fullAddress: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    region: GraphQLNullable<IdentifiableAddressElementSortInput> = nil,
    area: GraphQLNullable<IdentifiableAddressElementSortInput> = nil,
    city: GraphQLNullable<IdentifiableAddressElementSortInput> = nil,
    settlement: GraphQLNullable<IdentifiableAddressElementSortInput> = nil,
    street: GraphQLNullable<IdentifiableAddressElementSortInput> = nil,
    house: GraphQLNullable<AddressElementSortInput> = nil,
    block: GraphQLNullable<AddressElementSortInput> = nil,
    flat: GraphQLNullable<AddressElementSortInput> = nil,
    latitude: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    longitude: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil
  ) {
    __data = InputDict([
      "displayText": displayText,
      "fullAddress": fullAddress,
      "region": region,
      "area": area,
      "city": city,
      "settlement": settlement,
      "street": street,
      "house": house,
      "block": block,
      "flat": flat,
      "latitude": latitude,
      "longitude": longitude
    ])
  }

  /// Текст для отображения
  public var displayText: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["displayText"] }
    set { __data["displayText"] = newValue }
  }

  /// Полный адрес для последующего поиска в адресных системах, например "Тверская обл, пгт Пено"
  public var fullAddress: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["fullAddress"] }
    set { __data["fullAddress"] = newValue }
  }

  /// Регион (область, край)
  public var region: GraphQLNullable<IdentifiableAddressElementSortInput> {
    get { __data["region"] }
    set { __data["region"] = newValue }
  }

  /// Район в регионе
  public var area: GraphQLNullable<IdentifiableAddressElementSortInput> {
    get { __data["area"] }
    set { __data["area"] = newValue }
  }

  /// Город
  public var city: GraphQLNullable<IdentifiableAddressElementSortInput> {
    get { __data["city"] }
    set { __data["city"] = newValue }
  }

  /// Населённый пункт
  public var settlement: GraphQLNullable<IdentifiableAddressElementSortInput> {
    get { __data["settlement"] }
    set { __data["settlement"] = newValue }
  }

  /// Улица
  public var street: GraphQLNullable<IdentifiableAddressElementSortInput> {
    get { __data["street"] }
    set { __data["street"] = newValue }
  }

  /// Дом
  public var house: GraphQLNullable<AddressElementSortInput> {
    get { __data["house"] }
    set { __data["house"] = newValue }
  }

  /// Корпус/строение
  public var block: GraphQLNullable<AddressElementSortInput> {
    get { __data["block"] }
    set { __data["block"] = newValue }
  }

  /// Корпус/строение
  public var flat: GraphQLNullable<AddressElementSortInput> {
    get { __data["flat"] }
    set { __data["flat"] = newValue }
  }

  /// Широта
  public var latitude: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["latitude"] }
    set { __data["latitude"] = newValue }
  }

  /// Долгота
  public var longitude: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["longitude"] }
    set { __data["longitude"] = newValue }
  }
}
