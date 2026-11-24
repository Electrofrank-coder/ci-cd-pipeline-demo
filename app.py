from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return "Hola Mundo! Aplicacion CI/CD funcionando."

@app.route('/health')
def health():
    return jsonify({"status": "ok", "app": "ci-cd-demo"}), 200

@app.route('/sumar/<int:a>/<int:b>')
def sumar(a, b):
    return jsonify({"operacion": "suma", "resultado": a + b})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
