infix operator ~=
/// Has prefix
public func ~= <Model>(lhs: KeyPath<Model, String>, rhs: String) -> FilterOperator<Model>
    where Model.Database.QueryFilterMethod == DataPredicateComparison
{
    return .make(lhs, .like, ["%" + rhs])
}
/// Has prefix
public func ~= <Model>(lhs: KeyPath<Model, String?>, rhs: String) -> FilterOperator<Model>
    where Model.Database.QueryFilterMethod == DataPredicateComparison
{
    return .make(lhs, .like, ["%" + rhs])
}

infix operator =~
/// Has suffix.
public func =~ <Model>(lhs: KeyPath<Model, String>, rhs: String) -> FilterOperator<Model>
    where Model.Database.QueryFilterMethod == DataPredicateComparison
{
    return .make(lhs, .like, [rhs + "%"])
}
/// Has suffix.
public func =~ <Model>(lhs: KeyPath<Model, String?>, rhs: String) -> FilterOperator<Model>
    where Model.Database.QueryFilterMethod == DataPredicateComparison
{
    return .make(lhs, .like, [rhs + "%"])
}

infix operator ~~
/// Contains.
public func ~~ <Model>(lhs: KeyPath<Model, String>, rhs: String) -> FilterOperator<Model>
    where Model.Database.QueryFilterMethod == DataPredicateComparison
{
    return .make(lhs, .like, ["%" + rhs + "%"])
}
/// Contains.
public func ~~ <Model>(lhs: KeyPath<Model, String?>, rhs: String) -> FilterOperator<Model>
    where Model.Database.QueryFilterMethod == DataPredicateComparison
{
    return .make(lhs, .like, ["%" + rhs + "%"])
}
