import lambda_function

def test_default():
    output = lambda_function.lambda_handler({"key1": 1, "key2": 2}, {})
    assert(output == 3)
