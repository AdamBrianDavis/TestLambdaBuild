import json

def lambda_handler(event, context):
    print("Event: " + json.dumps(event))
    return sum(event.values())
