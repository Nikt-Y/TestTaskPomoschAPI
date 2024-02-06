// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// Данные паспорта РФ
public struct PassportSortInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    series: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    number: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    dateOfIssue: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    issuerCode: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    issuer: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    placeOfBirth: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil
  ) {
    __data = InputDict([
      "series": series,
      "number": number,
      "dateOfIssue": dateOfIssue,
      "issuerCode": issuerCode,
      "issuer": issuer,
      "placeOfBirth": placeOfBirth
    ])
  }

  /// Серия
  public var series: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["series"] }
    set { __data["series"] = newValue }
  }

  /// Номер
  public var number: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["number"] }
    set { __data["number"] = newValue }
  }

  /// Дата выдачи
  public var dateOfIssue: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["dateOfIssue"] }
    set { __data["dateOfIssue"] = newValue }
  }

  /// Код подразделения, выдавшего паспорт
  public var issuerCode: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["issuerCode"] }
    set { __data["issuerCode"] = newValue }
  }

  /// Кем выдан паспорт
  public var issuer: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["issuer"] }
    set { __data["issuer"] = newValue }
  }

  /// Место рождения
  public var placeOfBirth: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["placeOfBirth"] }
    set { __data["placeOfBirth"] = newValue }
  }
}
