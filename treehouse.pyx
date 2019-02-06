cpdef map_values(transform, obj):
    """
    invoke transform on obj and all values of obj, recursively
    """

    obj = transform(obj)

    if isinstance(obj, dict):
        return {
            k: map_values(transform, v)
            for k, v in obj.iteritems()
        }

    if isinstance(obj, list):
        return [
            map_values(transform, v)
            for v in obj
        ]

    return obj
