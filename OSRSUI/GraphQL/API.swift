// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetItemsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetItems {
      items {
        __typename
        name
        members
      }
    }
    """

  public let operationName: String = "GetItems"

  public let operationIdentifier: String? = "1b873bb10dcac02164a7895d3887e21d5abf9da56c1f5d94624711d1d81a4caf"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(items: [Item]) {
      self.init(unsafeResultMap: ["__typename": "Query", "items": items.map { (value: Item) -> ResultMap in value.resultMap }])
    }

    public var items: [Item] {
      get {
        return (resultMap["items"] as! [ResultMap]).map { (value: ResultMap) -> Item in Item(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Item) -> ResultMap in value.resultMap }, forKey: "items")
      }
    }

    public struct Item: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Item"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("members", type: .nonNull(.scalar(Bool.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String, members: Bool) {
        self.init(unsafeResultMap: ["__typename": "Item", "name": name, "members": members])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Name displayed in game
      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var members: Bool {
        get {
          return resultMap["members"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "members")
        }
      }
    }
  }
}
