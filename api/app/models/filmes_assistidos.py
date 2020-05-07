from app import db,ma

class FilmesAssistidos(db.Model):
	__tablename__ = 'FilmesAssistidos'

	id = db.Column(db.Integer, primary_key=True, autoincrement=True)
	idFilme = db.Column(db.Integer,db.ForeignKey('Filmes.id'), nullable=False)
	idUsuario = db.Column(db.Integer,db.ForeignKey('Usuarios.id'))
	idAnoMeta = db.Column(db.Integer,db.ForeignKey('Usuarios.id'))
	posAno = db.Column(db.Integer, nullable=False)
	data = db.Column(db.DateTime)
	inedito = db.Column(db.Integer)

	def __init__(self,idFilme,idUsuario,idAnoMeta,posAno,data,inedito):
		self.idFilme = idFilme
		self.idUsuario = idUsuario
		self.idAnoMeta = idAnoMeta
		self.posAno = posAno
		self.data = data
		self.inedito = inedito

class FilmesAssistidosSchema(ma.Schema):
	class Meta:
		fields = ('id','idFilme','idUsuario','idAnoMeta','posAno','data','inedito')

assistido_schema = FilmesAssistidosSchema()
assistidos_schema = FilmesAssistidosSchema(many=True)
