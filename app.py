from flask import Flask, request

app = Flask(__name__)

@app.route('/radarr', methods=['POST'])
def radarr_webhook():
    # Trigger your Radarr-related script here
    # You can access request data, headers, etc. using the request object
    # For example, request.json contains the JSON data sent with the POST request

    # Sample processing (replace with your logic)
    data = request.json
    print("Received Radarr webhook data:", data)

    # Add your script execution logic here

    return 'Webhook received successfully'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
