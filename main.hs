module Main where
import System.IO

--prouc :: String -> String
--prouc a =

--selecuc :: IO()
--selecuc = do
 --   putStrLn ("Qual a disciplina que deseja ver?:")
   -- a <- getLine
    --procuc a

--verifesc :: Int -> IO()
--verifesc x 
  --  | x == 1 = selecuc
-- | x == 2 = selecal
   -- | otherwise = putStrLn ("ERROR: INVALID OPTION")


--escaluc :: IO()
--escaluc = do
  --  putStrLn ("1->Ver UC \n2->Ver Aluno \nQual a opção?:")
   -- a <- getLine
   -- let opcao = read a :: Int
   -- verifesc opcao




main :: IO ()
main = do
    putStrLn "Escolha uma opção: \1 - Lista de alunos \2 - Cadeiras \3 - Inscrições\0 - Sair"
    opcao <- getLine
    lancaopcao opcao 

lancaopcao :: Int -> IO()
lancaopcao opcao 
    | opcao == 1 = do
        filelistaalunos
        main
    | opcao == 2 = do 
       filecadeiras
        main
    | opcao == 3 = do
       fileinscricoes
        main
    | opcao == 0 = do
        putStrLn ("Até à próxima :)")
        return ()
    |otherwise = do
        putStrLn ("ERROR: INVALID OPTION")
        main

filelistaalunos :: IO ()
filelistaalunos = do
  putStrLn ("\n ***LISTA DE ALUNOS***\n")
  fic1 <- openFile "listaalunos.txt" ReadMode
  contents <- hGetContents fic1
  putStrLn contents
  hClose fic1
 
 filecadeiras :: IO ()
 filecadeiras = do  
  putStrLn ("\n ***CADEIRAS***\n")
  fic2 <- openFile "ucs.txt" ReadMode
  contents <- hGetContents fic2
  putStrLn contents
  hClose fic2

  fileinscricoes :: IO ()
  fileinscricoes = do
  putStrLn ("\n ***INCRIÇÕES***\n")
  fic3 <- openFile "inscrições.txt" ReadMode
  contents <- hGetContents fic3
  putStrLn contents
  hClose fic3
  



--main :: IO()
--main = do
    --buscadados
    --putStrLn ("******************MENU*******************\n*****************************************")
    --putStrLn ("\n1->Ver UC \n2->Ver Alunos \n3->Filtrar por UC/Alunos\n0->Sair \n    Qual a opção?:")
   -- a <- getLine
   -- opcao a

