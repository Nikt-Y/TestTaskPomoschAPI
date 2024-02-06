// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class WardsPageQuery: GraphQLQuery {
  public static let operationName: String = "WardsPageQuery"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query WardsPageQuery($order: [WardSortInput!], $first: Int, $after: String, $before: String, $last: Int) { wards(order: $order, first: $first, after: $after, before: $before, last: $last) { __typename edges { __typename cursor node { __typename publicInformation { __typename name { __typename firstName middleName fullName } photo { __typename id url } gender city story } id } } pageInfo { __typename endCursor startCursor hasPreviousPage hasNextPage } totalCount } }"#
    ))

  public var order: GraphQLNullable<[WardSortInput]>
  public var first: GraphQLNullable<Int>
  public var after: GraphQLNullable<String>
  public var before: GraphQLNullable<String>
  public var last: GraphQLNullable<Int>

  public init(
    order: GraphQLNullable<[WardSortInput]>,
    first: GraphQLNullable<Int>,
    after: GraphQLNullable<String>,
    before: GraphQLNullable<String>,
    last: GraphQLNullable<Int>
  ) {
    self.order = order
    self.first = first
    self.after = after
    self.before = before
    self.last = last
  }

  public var __variables: Variables? { [
    "order": order,
    "first": first,
    "after": after,
    "before": before,
    "last": last
  ] }

  public struct Data: PomoschAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { PomoschAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("wards", Wards?.self, arguments: [
        "order": .variable("order"),
        "first": .variable("first"),
        "after": .variable("after"),
        "before": .variable("before"),
        "last": .variable("last")
      ]),
    ] }

    /// Подопечные
    public var wards: Wards? { __data["wards"] }

    /// Wards
    ///
    /// Parent Type: `WardsConnection`
    public struct Wards: PomoschAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { PomoschAPI.Objects.WardsConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("edges", [Edge]?.self),
        .field("pageInfo", PageInfo.self),
        .field("totalCount", Int.self),
      ] }

      /// A list of edges.
      public var edges: [Edge]? { __data["edges"] }
      /// Information to aid in pagination.
      public var pageInfo: PageInfo { __data["pageInfo"] }
      /// Identifies the total count of items in the connection.
      public var totalCount: Int { __data["totalCount"] }

      /// Wards.Edge
      ///
      /// Parent Type: `WardsEdge`
      public struct Edge: PomoschAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { PomoschAPI.Objects.WardsEdge }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("cursor", String.self),
          .field("node", Node.self),
        ] }

        /// A cursor for use in pagination.
        public var cursor: String { __data["cursor"] }
        /// The item at the end of the edge.
        public var node: Node { __data["node"] }

        /// Wards.Edge.Node
        ///
        /// Parent Type: `Ward`
        public struct Node: PomoschAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { PomoschAPI.Objects.Ward }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("publicInformation", PublicInformation.self),
            .field("id", PomoschAPI.ID.self),
          ] }

          /// Общедоступная информация о подопечном
          public var publicInformation: PublicInformation { __data["publicInformation"] }
          /// Уникальный идентификатор
          public var id: PomoschAPI.ID { __data["id"] }

          /// Wards.Edge.Node.PublicInformation
          ///
          /// Parent Type: `WardPublicInformation`
          public struct PublicInformation: PomoschAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { PomoschAPI.Objects.WardPublicInformation }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("name", Name.self),
              .field("photo", Photo.self),
              .field("gender", GraphQLEnum<PomoschAPI.Gender>.self),
              .field("city", String.self),
              .field("story", String.self),
            ] }

            /// Имя
            public var name: Name { __data["name"] }
            /// Фотография подопечного
            public var photo: Photo { __data["photo"] }
            /// Пол
            public var gender: GraphQLEnum<PomoschAPI.Gender> { __data["gender"] }
            /// Населённый пункт проживания
            public var city: String { __data["city"] }
            /// История подопечного
            public var story: String { __data["story"] }

            /// Wards.Edge.Node.PublicInformation.Name
            ///
            /// Parent Type: `Nomen`
            public struct Name: PomoschAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { PomoschAPI.Objects.Nomen }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("firstName", String.self),
                .field("middleName", String?.self),
                .field("fullName", String.self),
              ] }

              /// Имя
              public var firstName: String { __data["firstName"] }
              /// Отчество
              public var middleName: String? { __data["middleName"] }
              /// Полное имя (Имя Отчество Фамилия)
              public var fullName: String { __data["fullName"] }
            }

            /// Wards.Edge.Node.PublicInformation.Photo
            ///
            /// Parent Type: `FileInformation`
            public struct Photo: PomoschAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { PomoschAPI.Objects.FileInformation }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("id", String.self),
                .field("url", String.self),
              ] }

              /// Идентификатор файла
              public var id: String { __data["id"] }
              /// Ссылка для отображения или скачивания файла
              public var url: String { __data["url"] }
            }
          }
        }
      }

      /// Wards.PageInfo
      ///
      /// Parent Type: `PageInfo`
      public struct PageInfo: PomoschAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { PomoschAPI.Objects.PageInfo }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("endCursor", String?.self),
          .field("startCursor", String?.self),
          .field("hasPreviousPage", Bool.self),
          .field("hasNextPage", Bool.self),
        ] }

        /// When paginating forwards, the cursor to continue.
        public var endCursor: String? { __data["endCursor"] }
        /// When paginating backwards, the cursor to continue.
        public var startCursor: String? { __data["startCursor"] }
        /// Indicates whether more edges exist prior the set defined by the clients arguments.
        public var hasPreviousPage: Bool { __data["hasPreviousPage"] }
        /// Indicates whether more edges exist following the set defined by the clients arguments.
        public var hasNextPage: Bool { __data["hasNextPage"] }
      }
    }
  }
}
