cpdef map_values(transform, obj, suppressed=Exception):
    """
    invoke transform on obj and all values of obj, recursively
    """

    try:
        obj = transform(obj)
    except suppressed:
        pass

    return {
        k: map_values(transform, v)
        for k, v in obj.iteritems()
    } if isinstance(obj, dict) else [
        map_values(transform, v)
        for v in obj
    ] if isinstance(obj, list) else obj
