from app import app
from flask import jsonify
from ..views import filmes,filmes_assistidos

@app.route('/', methods=['GET'])
def root():
	return "Teste"

@app.route('/filmes', methods=['GET'])
def get_filmes():
	return filmes.get_filmes()

@app.route('/filmesPorUsuario/<id>/<ano>', methods=['GET'])
def get_filmes_usuario():
	return filmes.get_filmes_usuario()

@app.route('/assistidos', methods=['GET'])
def get_assistidos():
	return filmes_assistidos.get_assistidos()