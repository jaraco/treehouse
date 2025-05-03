.. image:: https://img.shields.io/pypi/v/treehouse.svg
   :target: https://pypi.org/project/treehouse

.. image:: https://img.shields.io/pypi/pyversions/treehouse.svg

.. image:: https://github.com/jaraco/treehouse/actions/workflows/main.yml/badge.svg
   :target: https://github.com/jaraco/treehouse/actions?query=workflow%3A%22tests%22
   :alt: tests

.. image:: https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json
    :target: https://github.com/astral-sh/ruff
    :alt: Ruff

.. .. image:: https://readthedocs.org/projects/PROJECT_RTD/badge/?version=latest
..    :target: https://PROJECT_RTD.readthedocs.io/en/latest/?badge=latest

.. image:: https://img.shields.io/badge/skeleton-2025-informational
   :target: https://blog.jaraco.com/skeleton


Traverse Python object trees (dicts/lists) at C speed::

    >>> import treehouse
    >>> treehouse.map_values(int, {"a": "1", "b": {"c": "2"}})
    {"a": 1, "b": {"c": 2}}
