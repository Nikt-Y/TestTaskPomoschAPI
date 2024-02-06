// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// Имя человека
public struct NomenSortInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    firstName: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    middleName: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    lastName: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    fullName: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    displayName: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil
  ) {
    __data = InputDict([
      "firstName": firstName,
      "middleName": middleName,
      "lastName": lastName,
      "fullName": fullName,
      "displayName": displayName
    ])
  }

  /// Имя
  public var firstName: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["firstName"] }
    set { __data["firstName"] = newValue }
  }

  /// Отчество
  public var middleName: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["middleName"] }
    set { __data["middleName"] = newValue }
  }

  /// Фамилия
  public var lastName: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["lastName"] }
    set { __data["lastName"] = newValue }
  }

  /// Полное имя (Имя Отчество Фамилия)
  public var fullName: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["fullName"] }
    set { __data["fullName"] = newValue }
  }

  /// Имя для отображения (Имя Фамилия)
  public var displayName: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["displayName"] }
    set { __data["displayName"] = newValue }
  }
}
