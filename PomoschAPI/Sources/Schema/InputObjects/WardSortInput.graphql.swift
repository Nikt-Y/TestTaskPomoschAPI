// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// Подопечный
public struct WardSortInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    privateInformation: GraphQLNullable<WardPrivateInformationSortInput> = nil,
    publicInformation: GraphQLNullable<WardPublicInformationSortInput> = nil,
    regularNeedsAccountId: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    countsAndAmounts: GraphQLNullable<WardCountsAndAmountsSortInput> = nil,
    published: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    immediateHelpRequired: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    created: GraphQLNullable<AuditMarkerSortInput> = nil,
    updated: GraphQLNullable<AuditMarkerSortInput> = nil,
    id: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil
  ) {
    __data = InputDict([
      "privateInformation": privateInformation,
      "publicInformation": publicInformation,
      "regularNeedsAccountId": regularNeedsAccountId,
      "countsAndAmounts": countsAndAmounts,
      "published": published,
      "immediateHelpRequired": immediateHelpRequired,
      "created": created,
      "updated": updated,
      "id": id
    ])
  }

  /// Частная информация о подопечном
  public var privateInformation: GraphQLNullable<WardPrivateInformationSortInput> {
    get { __data["privateInformation"] }
    set { __data["privateInformation"] = newValue }
  }

  /// Общедоступная информация о подопечном
  public var publicInformation: GraphQLNullable<WardPublicInformationSortInput> {
    get { __data["publicInformation"] }
    set { __data["publicInformation"] = newValue }
  }

  /// Счёт для сбора средств на регулярные потребности
  public var regularNeedsAccountId: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["regularNeedsAccountId"] }
    set { __data["regularNeedsAccountId"] = newValue }
  }

  /// Агрегированные суммы и счётчики
  public var countsAndAmounts: GraphQLNullable<WardCountsAndAmountsSortInput> {
    get { __data["countsAndAmounts"] }
    set { __data["countsAndAmounts"] = newValue }
  }

  /// Подопечный доступен для просмотра жертвователями
  public var published: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["published"] }
    set { __data["published"] = newValue }
  }

  /// Подопечному требуется немедленная помощь
  public var immediateHelpRequired: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["immediateHelpRequired"] }
    set { __data["immediateHelpRequired"] = newValue }
  }

  /// Аудит добавления
  public var created: GraphQLNullable<AuditMarkerSortInput> {
    get { __data["created"] }
    set { __data["created"] = newValue }
  }

  /// Аудит изменения
  public var updated: GraphQLNullable<AuditMarkerSortInput> {
    get { __data["updated"] }
    set { __data["updated"] = newValue }
  }

  /// Уникальный идентификатор
  public var id: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }
}
