// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// Общедоступная информация о подопечном
public struct WardPublicInformationSortInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    name: GraphQLNullable<NomenSortInput> = nil,
    dateOfBirth: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    dateOfDeath: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    gender: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    story: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    city: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    publicLatitude: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    publicLongitude: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil
  ) {
    __data = InputDict([
      "name": name,
      "dateOfBirth": dateOfBirth,
      "dateOfDeath": dateOfDeath,
      "gender": gender,
      "story": story,
      "city": city,
      "publicLatitude": publicLatitude,
      "publicLongitude": publicLongitude
    ])
  }

  /// Имя
  public var name: GraphQLNullable<NomenSortInput> {
    get { __data["name"] }
    set { __data["name"] = newValue }
  }

  /// Дата рождения
  public var dateOfBirth: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["dateOfBirth"] }
    set { __data["dateOfBirth"] = newValue }
  }

  /// Дата смерти
  public var dateOfDeath: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["dateOfDeath"] }
    set { __data["dateOfDeath"] = newValue }
  }

  /// Пол
  public var gender: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["gender"] }
    set { __data["gender"] = newValue }
  }

  /// История подопечного
  public var story: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["story"] }
    set { __data["story"] = newValue }
  }

  /// Населённый пункт проживания
  public var city: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["city"] }
    set { __data["city"] = newValue }
  }

  /// Широта места проживания подопечного
  public var publicLatitude: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["publicLatitude"] }
    set { __data["publicLatitude"] = newValue }
  }

  /// Долгота места проживания подопечного
  public var publicLongitude: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["publicLongitude"] }
    set { __data["publicLongitude"] = newValue }
  }
}
