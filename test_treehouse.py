import decimal

import treehouse


def make_decimal(ob):
    return decimal.Decimal(ob['_val']) if ob['_type'] == 'decimal' else ob


def test_basic_transform():
    ob = dict(
        a=dict(
            _type='decimal',
            _val='1.0',
        ),
    )

    new_ob = treehouse.map_values(make_decimal, ob)
    assert new_ob['a'] == decimal.Decimal('1.0')


def test_list_transform():
    ob = ['a', 'b', 'c']
    new_ob = treehouse.map_values(make_decimal, ob)
    assert new_ob == ob
    assert new_ob is not ob
