cpdef map_values(transform, obj):
    """
    invoke transform on obj and all values of obj, recursively
    """

    obj = transform(obj)

    return {
        k: map_values(transform, v)
        for k, v in obj.iteritems()
    } if isinstance(obj, dict) else [
        map_values(transform, v)
        for v in obj
    ] if isinstance(obj, list) else obj
