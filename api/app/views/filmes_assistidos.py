from app import db
from flask import request,jsonify
from ..models.filmes_assistidos import FilmesAssistidos, assistido_schema, assistidos_schema

def get_assistidos():
	assistidos = FilmesAssistidos.query.all()
	if assistidos:
		result = assistidos_schema.dump(assistidos)
		return jsonify({'message': 'successfully fetched', 'data': result}), 201

	return jsonify({'message': "user don't exist", 'data': {}}), 404