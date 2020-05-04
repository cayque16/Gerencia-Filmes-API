from app import db
from flask import request,jsonify
from ..models.filmes import Filmes, filme_schema, filmes_schema

def get_filmes():
	filmes = Filmes.query.all()
	if filmes:
		result = filmes_schema.dump(filmes)
		return jsonify({'message': 'successfully fetched', 'data': result}), 201

	return jsonify({'message': "user don't exist", 'data': {}}), 404

# def get_filmes_usuario(id,ano):

