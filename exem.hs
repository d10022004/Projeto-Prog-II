module Exem where
import System.IO
import Data.Char (isSpace)
import Text.Read (readMaybe)
import Data.Maybe (mapMaybe)


-- Função que recebe uma lista de strings representando as linhas do arquivo e retorna uma lista de tuplas com os números e nome das disciplinas
toDisciplinas :: [String] -> [(Int, Int, String)]
toDisciplinas = map toDisciplina

-- Função que recebe uma string representando uma linha do arquivo e retorna uma tupla com o número e nome da disciplina
toDisciplina :: String -> (Int, Int, String)
toDisciplina str = case words str of
                     (n1:n2:rest) -> (read n1, read n2, unwords rest)
                     _ -> error "Formato de linha inválido"

-- Função que lê o arquivo e retorna uma string com o seu conteúdo
impruc :: IO String
impruc = readFile "ucs.txt"

-- Função secundária que lê ficheiro das ucs e apresenta as em lista
apreuc :: IO ([(Int, Int, String)])
apreuc = do
    texto <- impruc
    let list = lines texto
        disciplinas = toDisciplinas list
    return disciplinas

-----------------------------------------------------------------------------------------

toalunos :: [String] -> [(String, Int, String)]
toalunos = mapMaybe toaluno

-- Função que recebe uma string representando uma linha do arquivo e retorna uma tupla com o código, número e nome da disciplina
toaluno :: String -> Maybe (String, Int, String)
toaluno str = case words str of
                     (n1:n2:rest) -> Just (n1, read n2, unwords rest)
                     _ -> Nothing



-- Função que retorna o que está escrito no ficheiro listaalunos.txt
imprlisal :: IO String
imprlisal = readFile "listaalunos.txt"

-- Função secundária que lê ficheiro da lista de alunos e apresenta as em lista
apreal :: IO ([(String, Int, String)])
apreal = do
    texto <- imprlisal
    let list = lines texto 
        alunos = toalunos list
    return alunos
---------------------------------------------------------------------------------
-- Função que recebe uma string e retorna uma lista de truplas
toinscri :: [String] -> [(String, Int)]
toinscri = mapMaybe toinscr

-- Função que recebe uma string representando uma linha do arquivo e retorna uma tupla com o código de aluno e numero da disciplina
toinscr :: String -> Maybe (String, Int)
toinscr str = case words str of
                     (n1:n2:rest) -> Just (n1, read [head n2])
                     _ -> Nothing

-- Função que vai buscar oq está no ficheiro inscrições.txt
impins :: IO String
impins = readFile "inscrições.txt"

-- Função secundária das inscrições
apreins :: IO([(String, Int)])
apreins = do
    texto <- impins 
    let list = lines texto
        inscricao = toinscri list
    return inscricao

------------------------------------------------------------------------------
recetfic :: IO ()
recetfic = do
    cadeiras <- apreuc
    inscricoes <- apreins
    alunos <- apreal
    print cadeiras
    print inscricoes
    print alunos
    return ()







