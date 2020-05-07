from app import db,ma

class AnoMeta(db.Model):
	__tablename__ = 'AnoMeta'

	id = db.Column(db.Integer, primary_key=True, autoincrement=True)
	ano = db.Column(db.Integer, nullable=False)
	meta = db.Column(db.Integer, nullable=False)

	def __init__(self,ano,meta):
		self.ano = ano
		self.meta = meta

class MetaSchema(ma.Schema):
	class Meta:
		fields = ('id', 'ano', 'meta')

meta_schema = MetaSchema()
metas_schema = MetaSchema(many=True)