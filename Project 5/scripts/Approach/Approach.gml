/// @function approach(a, b, amount)
/// @param a
/// @param b
/// @param amount

/// Moves "a" towards "b" by "amount" and returns the result
/// Does not overshoot "b"

function Approach(a, b, amount)
{
if (a < b)
    {
    a += amount;
    if (a > b)
        return b;
    }
else
    {
    a -= amount;
        if (a < b)
            return b;
    }
return a;
}