module upstream
    export add
    """
    add(x, y)

    Summation of two things.
    """
    function add(x, y; fast)
        if fast
            return @fastmath x + y
        else
            return x + y
        end
    end
end
