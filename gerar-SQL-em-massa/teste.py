from time import sleep
from googlesearch import search
import requests

# https://www.omdbapi.com/?i=tt0085794&apikey=
apikey = ""
url_base = " https://www.omdbapi.com/"

filmes = open("2021.csv", "r")
result = open("result.sql", "w")

posAno = 1
for filme in filmes:
  filme = filme.split(";")
  if filme[3].strip('\n') == 'SIM':    
    inedito = 1
  else:
    inedito = 0
  for resultado in search(filme[0]+" imdb",  stop=1):
    imdb_id = resultado.split("/")[4]
    url_ombd = str(url_base)+"?i="+str(imdb_id)+"&apikey="+str(apikey)
    response = requests.request("POST", url_ombd).json()
    result.write("INSERT INTO Filmes (imdbID, titulo, ano, duracao, nota, poster) " +
      "VALUES ('{}', '{}', {}, {}, {}, '{}');\n"
      .format(imdb_id, response['Title'], response['Year'], response['Runtime'].split(" ")[0], response['imdbRating'], response['Poster']))
    result.write("INSERT INTO FilmesAssistidos (idFilme, idAnoMeta, posAno, data, inedito, usuario_id) " +
      "VALUES (last_insert_id(), {}, {}, '{}', {}, {});\n"
      .format(6, posAno, filme[1], inedito, 2))
    print("Filme {}...".format(posAno))
    posAno += 1
    sleep(2)

filmes.close
result.close