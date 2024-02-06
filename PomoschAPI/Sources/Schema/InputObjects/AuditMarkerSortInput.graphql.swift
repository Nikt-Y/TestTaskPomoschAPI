// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// Информация о пользователе и дате и времени совершения какой-либо операции
public struct AuditMarkerSortInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    timestamp: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil
  ) {
    __data = InputDict([
      "timestamp": timestamp
    ])
  }

  /// Дата и время совершения операции
  public var timestamp: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["timestamp"] }
    set { __data["timestamp"] = newValue }
  }
}
