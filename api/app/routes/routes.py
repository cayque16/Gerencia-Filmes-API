from app import app

@app.route('/', methods=['GET'])
def root():
	return "Teste"