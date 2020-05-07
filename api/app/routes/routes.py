from app import app
from flask import jsonify
from ..views import filmes,filmes_assistidos,usuarios

@app.route('/', methods=['GET'])
def root():
	return "Teste"

@app.route('/filmes', methods=['GET'])
def get_filmes():
	return filmes.get_filmes()

@app.route('/assistidos', methods=['GET'])
def get_assistidos():
	return filmes_assistidos.get_assistidos()

@app.route('/usuarios', methods=['GET'])
def get_usuarios():
	return usuarios.get_usuarios()