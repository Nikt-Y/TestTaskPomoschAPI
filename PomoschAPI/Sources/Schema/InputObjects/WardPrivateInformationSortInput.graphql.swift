// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// Частная информация о подопечном
public struct WardPrivateInformationSortInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    address: GraphQLNullable<AddressSortInput> = nil,
    entranceNumber: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    flatFloor: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    passport: GraphQLNullable<PassportSortInput> = nil,
    maritalStatus: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    profession: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    rank: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    disabilityGroup: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    comments: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    phoneNumber: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil
  ) {
    __data = InputDict([
      "address": address,
      "entranceNumber": entranceNumber,
      "flatFloor": flatFloor,
      "passport": passport,
      "maritalStatus": maritalStatus,
      "profession": profession,
      "rank": rank,
      "disabilityGroup": disabilityGroup,
      "comments": comments,
      "phoneNumber": phoneNumber
    ])
  }

  /// Адрес
  public var address: GraphQLNullable<AddressSortInput> {
    get { __data["address"] }
    set { __data["address"] = newValue }
  }

  /// Подъезд
  public var entranceNumber: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["entranceNumber"] }
    set { __data["entranceNumber"] = newValue }
  }

  /// Этаж
  public var flatFloor: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["flatFloor"] }
    set { __data["flatFloor"] = newValue }
  }

  /// Паспортные данные
  public var passport: GraphQLNullable<PassportSortInput> {
    get { __data["passport"] }
    set { __data["passport"] = newValue }
  }

  /// Семейный статус
  public var maritalStatus: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["maritalStatus"] }
    set { __data["maritalStatus"] = newValue }
  }

  /// Профессия
  public var profession: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["profession"] }
    set { __data["profession"] = newValue }
  }

  /// Звание или учёная степень
  public var rank: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["rank"] }
    set { __data["rank"] = newValue }
  }

  /// Группа инвалидности
  public var disabilityGroup: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["disabilityGroup"] }
    set { __data["disabilityGroup"] = newValue }
  }

  /// Частные заметки о подопечном
  public var comments: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["comments"] }
    set { __data["comments"] = newValue }
  }

  /// Номер телефона
  public var phoneNumber: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["phoneNumber"] }
    set { __data["phoneNumber"] = newValue }
  }
}
