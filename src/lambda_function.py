import json

def lambda_handler(event, context):
    print("Event: " + json.dumps(event))
    print("Sum: " + str(sum(event.values())))
    return sum(event.values())
