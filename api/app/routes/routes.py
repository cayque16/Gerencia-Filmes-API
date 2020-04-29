from app import app
from flask import jsonify
from ..views import filmes

@app.route('/', methods=['GET'])
def root():
	return "Teste"

@app.route('/filmes', methods=['GET'])
def get_filmes():
	return filmes.get_filmes()