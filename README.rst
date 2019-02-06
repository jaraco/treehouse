.. image:: https://img.shields.io/pypi/v/treehouse.svg
   :target: https://pypi.org/project/treehouse

.. image:: https://img.shields.io/pypi/pyversions/treehouse.svg

.. image:: https://img.shields.io/travis/jaraco/treehouse/master.svg
   :target: https://travis-ci.org/jaraco/treehouse

.. .. image:: https://img.shields.io/appveyor/ci/jaraco/treehouse/master.svg
..    :target: https://ci.appveyor.com/project/jaraco/treehouse/branch/master

.. .. image:: https://readthedocs.org/projects/treehouse/badge/?version=latest
..    :target: https://treehouse.readthedocs.io/en/latest/?badge=latest


Traverse Python object trees (dicts/lists) at C speed.

    >>> def maybe_int(ob):
    ...     if not isinstance(ob, str) or not ob.isdigit():
    ...         return ob
    ...     return int(ob)

    >>> import treehouse
    >>> treehouse.map_values(maybe_int, {"a": "1", "b": {"c": "2"}})
    {"a": 1, "b": {"c": 2}}
