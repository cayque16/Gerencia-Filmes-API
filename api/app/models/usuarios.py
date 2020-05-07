from app import db,ma

class Usuarios(db.Model):
	__tablename__ = 'Usuarios'

	id = db.Column(db.Integer, primary_key=True, autoincrement=True)
	nome = db.Column(db.String(100), nullable=False)
	usuario = db.Column(db.String(50), nullable=False)
	senha = db.Column(db.String(150), nullable=False)
	email = db.Column(db.String(100), nullable=True)

	def __init__(self,nome,usuario,senha,email):
		self.nome = nome
		self.usuario = usuario
		self.senha = senha
		self.email = email

class UsuarioSchema(ma.Schema):
	class Meta:
		fields = ('id', 'nome', 'usuario', 'senha', 'email')

usuario_schema = UsuarioSchema()
usuarios_schema = UsuarioSchema(many=True)