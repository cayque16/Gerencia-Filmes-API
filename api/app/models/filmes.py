from app import db,ma

class Filmes(db.Model):
	__tablename__ =  'Filmes'

	id = db.Column(db.Integer, primary_key=True, autoincrement=True)
	imdbID = db.Column(db.String(45), nullable=False)
	titulo = db.Column(db.String(100), nullable=False)
	ano = db.Column(db.Integer)
	duracao = db.Column(db.Integer)
	nota = db.Column(db.Float)
	poster = db.Column(db.String(300))

	def __init__(self,imdbID,titulo,ano,duracao,nota,poster):
		self.imdbID = imdbID
		self.titulo = titulo
		self.ano = ano
		self.duracao = duracao
		self.nota = nota
		self.poster = poster

class FilmeSchema(ma.Schema):
	class Meta:
		fields = ('id', 'imdbID', 'titulo', 'ano', 'duracao', 'nota', 'poster')

filme_schema = FilmeSchema()
filmes_schema = FilmeSchema(many=True)