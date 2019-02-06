cpdef map_values(transform, obj):
    """
    invoke transform on obj and all values of obj, recursively
    """

    try:
        obj = transform(obj)
    except Exception:
        pass

    return {
        k: map_values(transform, v)
        for k, v in obj.iteritems()
    } if isinstance(obj, dict) else [
        map_values(transform, v)
        for v in obj
    ] if isinstance(obj, list) else obj
