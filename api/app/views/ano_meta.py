from app import db
from flask import request,jsonify
from ..models.ano_meta import AnoMeta, meta_schema, metas_schema

def get_metas():
	metas = AnoMeta.query.all()
	if metas:
		result = metas_schema.dump(metas)
		return jsonify({'message': 'successfully fetched', 'data': result}), 201

	return jsonify({'message': "user don't exist", 'data': {}}), 404
