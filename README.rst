.. image:: https://img.shields.io/pypi/v/treehouse.svg
   :target: https://pypi.org/project/treehouse

.. image:: https://img.shields.io/pypi/pyversions/treehouse.svg

.. image:: https://github.com/jaraco/treehouse/workflows/tests/badge.svg
   :target: https://github.com/jaraco/treehouse/actions?query=workflow%3A%22tests%22
   :alt: tests

.. image:: https://img.shields.io/badge/code%20style-black-000000.svg
   :target: https://github.com/psf/black
   :alt: Code style: Black

.. .. image:: https://readthedocs.org/projects/skeleton/badge/?version=latest
..    :target: https://skeleton.readthedocs.io/en/latest/?badge=latest

.. image:: https://img.shields.io/badge/skeleton-2022-informational
   :target: https://blog.jaraco.com/skeleton


Traverse Python object trees (dicts/lists) at C speed::

    >>> import treehouse
    >>> treehouse.map_values(int, {"a": "1", "b": {"c": "2"}})
    {"a": 1, "b": {"c": 2}}
