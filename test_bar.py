# this module shouldn't be at 100% coverage
def return_True():
    return True
def test_bar():
    if return_True():
        assert 2 + 2 == 4
    else:
        assert 3 + 3 == 6
