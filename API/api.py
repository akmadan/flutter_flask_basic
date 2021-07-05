from flask import Flask, request, jsonify
app = Flask(__name__)

@app.route('/api', methods = ['GET'])
def hello():
    d={}
    inputchr = str(request.args['character'])
    d['output'] = str(ord(inputchr))
    return jsonify(d)

if __name__ == '__main__':
    app.run()


