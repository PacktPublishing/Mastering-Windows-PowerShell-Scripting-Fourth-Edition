using System;
using System.Linq.Expressions;

/// <summary>
/// Summary description for SearchCondition
/// </summary>
public class SearchCondition
{
    public string PropertyName;
    public string Value;
    public ComparisonOperator Operator;

    internal BinaryExpression GetExpression(ParameterExpression parameter)
    {
        // Get the type of the intended property name
        var typedValue = Convert.ChangeType(
            this.Value,
            typeof(Element).GetField(this.PropertyName).FieldType
        );

        MemberExpression field = Expression.Field(parameter, this.PropertyName);
        ConstantExpression value = Expression.Constant(typedValue);

        return GetBinaryExpression(field, value);
    }

    private BinaryExpression GetBinaryExpression(MemberExpression field, ConstantExpression value)
    {
        switch (this.Operator)
        {
            case ComparisonOperator.eq:
                return Expression.Equal(field, value);
            case ComparisonOperator.ge:
                return Expression.GreaterThanOrEqual(field, value);
            case ComparisonOperator.gt:
                return Expression.GreaterThan(field, value);
            case ComparisonOperator.le:
                return Expression.LessThanOrEqual(field, value);
            case ComparisonOperator.lt:
                return Expression.LessThan(field, value);
            case ComparisonOperator.ne:
                return Expression.NotEqual(field, value);
            default:
                throw new InvalidOperationException("Invalid operator");
        }
    }
}