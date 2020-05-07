from app import db
from flask import request,jsonify
from ..models.usuarios import Usuarios, usuario_schema, usuarios_schema

def get_usuarios():
	usuarios = Usuarios.query.all()
	if usuarios:
		result = usuarios_schema.dump(usuarios)
		return jsonify({'message': 'successfully fetched', 'data': result}), 201

	return jsonify({'message': "user don't exist", 'data': {}}), 404
