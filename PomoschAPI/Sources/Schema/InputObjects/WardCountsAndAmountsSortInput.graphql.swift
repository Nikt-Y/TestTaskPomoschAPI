// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// Агрегированные суммы и счётчики
public struct WardCountsAndAmountsSortInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    activeSubscriptionsAmount: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    activeSubscriptionsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    totalSubscriptionsAmount: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    totalSubscriptionsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    activeNeedsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    totalNeedsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    activeRegularNeedsAmount: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    activeRegularNeedsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    activeOneTimeNeedsAmount: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    activeOneTimeNeedsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    totalRegularNeedsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    totalOneTimeNeedsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil,
    subscriptionsDeficit: GraphQLNullable<GraphQLEnum<SortEnumType>> = nil
  ) {
    __data = InputDict([
      "activeSubscriptionsAmount": activeSubscriptionsAmount,
      "activeSubscriptionsCount": activeSubscriptionsCount,
      "totalSubscriptionsAmount": totalSubscriptionsAmount,
      "totalSubscriptionsCount": totalSubscriptionsCount,
      "activeNeedsCount": activeNeedsCount,
      "totalNeedsCount": totalNeedsCount,
      "activeRegularNeedsAmount": activeRegularNeedsAmount,
      "activeRegularNeedsCount": activeRegularNeedsCount,
      "activeOneTimeNeedsAmount": activeOneTimeNeedsAmount,
      "activeOneTimeNeedsCount": activeOneTimeNeedsCount,
      "totalRegularNeedsCount": totalRegularNeedsCount,
      "totalOneTimeNeedsCount": totalOneTimeNeedsCount,
      "subscriptionsDeficit": subscriptionsDeficit
    ])
  }

  /// Общее количество средств от действующих подписок
  public var activeSubscriptionsAmount: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["activeSubscriptionsAmount"] }
    set { __data["activeSubscriptionsAmount"] = newValue }
  }

  /// Общее количество действующих подписок
  public var activeSubscriptionsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["activeSubscriptionsCount"] }
    set { __data["activeSubscriptionsCount"] = newValue }
  }

  /// Общее количество средств от всех подписок, действующих и отменённых
  public var totalSubscriptionsAmount: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["totalSubscriptionsAmount"] }
    set { __data["totalSubscriptionsAmount"] = newValue }
  }

  /// Общее количество подписок, действующих и отменённых
  public var totalSubscriptionsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["totalSubscriptionsCount"] }
    set { __data["totalSubscriptionsCount"] = newValue }
  }

  /// Количество действующих потребностей
  public var activeNeedsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["activeNeedsCount"] }
    set { __data["activeNeedsCount"] = newValue }
  }

  /// Общее количество потребностей, действующих и завершённых
  public var totalNeedsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["totalNeedsCount"] }
    set { __data["totalNeedsCount"] = newValue }
  }

  /// Сумма средств, требуемая для удовлетворения действующих регулярных потребностей
  public var activeRegularNeedsAmount: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["activeRegularNeedsAmount"] }
    set { __data["activeRegularNeedsAmount"] = newValue }
  }

  /// Количество действующих регулярных потребностей
  public var activeRegularNeedsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["activeRegularNeedsCount"] }
    set { __data["activeRegularNeedsCount"] = newValue }
  }

  /// Сумма средств, требуемая для удовлетворения действующих разовых потребностей
  public var activeOneTimeNeedsAmount: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["activeOneTimeNeedsAmount"] }
    set { __data["activeOneTimeNeedsAmount"] = newValue }
  }

  /// Количество действующих разовых потребностей
  public var activeOneTimeNeedsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["activeOneTimeNeedsCount"] }
    set { __data["activeOneTimeNeedsCount"] = newValue }
  }

  /// Общее количество регулярных потребностей, действующих и завершённых
  public var totalRegularNeedsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["totalRegularNeedsCount"] }
    set { __data["totalRegularNeedsCount"] = newValue }
  }

  /// Общее количество разовых потребностей, действующих и завершённых
  public var totalOneTimeNeedsCount: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["totalOneTimeNeedsCount"] }
    set { __data["totalOneTimeNeedsCount"] = newValue }
  }

  /// Нехватка средств подписки (ActiveRegularNeedsAmount - ActiveSubscriptionsAmount)
  public var subscriptionsDeficit: GraphQLNullable<GraphQLEnum<SortEnumType>> {
    get { __data["subscriptionsDeficit"] }
    set { __data["subscriptionsDeficit"] = newValue }
  }
}
