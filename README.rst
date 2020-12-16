.. image:: https://img.shields.io/pypi/v/treehouse.svg
   :target: `PyPI link`_

.. image:: https://img.shields.io/pypi/pyversions/treehouse.svg
   :target: `PyPI link`_

.. _PyPI link: https://pypi.org/project/treehouse

.. image:: https://github.com/jaraco/treehouse/workflows/Automated%20Tests/badge.svg
   :target: https://github.com/jaraco/treehouse/actions?query=workflow%3A%22Automated+Tests%22
   :alt: Automated Tests

.. image:: https://img.shields.io/badge/code%20style-black-000000.svg
   :target: https://github.com/psf/black
   :alt: Code style: Black

.. .. image:: https://readthedocs.org/projects/treehouse/badge/?version=latest
..    :target: https://treehouse.readthedocs.io/en/latest/?badge=latest


Traverse Python object trees (dicts/lists) at C speed::

    >>> import treehouse
    >>> treehouse.map_values(int, {"a": "1", "b": {"c": "2"}})
    {"a": 1, "b": {"c": 2}}
