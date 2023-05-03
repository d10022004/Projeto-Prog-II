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




opcao :: Int -> IO()
opcao x 
    | x == 1 = veruc
    | x == 2 = veralu
    | x == 3 = escaluc
    | x == 0 = do
        putStrLn ("Até à próxima :)")
        return 0
    |otherwise = putStrLn ("ERROR: INVALID OPTION")

buscadados :: IO ()
buscadados = do
-- MOSTRA FICHEIRO DA LISTA DE ALUNOS
  putStrLn ("\n ***LISTA DE ALUNOS***\n")
  fic1 <- openFile "listaalunos.txt" ReadMode
  contents <- hGetContents fic1
  putStrLn contents
  hClose fic1
  -- MOSTRA FICHEIRO DAS CADEIRAS   
  putStrLn ("\n ***CADEIRAS***\n")
  fic2 <- openFile "ucs.txt" ReadMode
  contents <- hGetContents fic2
  putStrLn contents
  hClose fic2
  -- MOSTRA FICHEIRO DAS INSCRIÇÕES
  putStrLn ("\n ***INCRIÇÕES***\n")
  fic3 <- openFile "inscrições.txt" ReadMode
  contents <- hGetContents fic3
  putStrLn contents
  hClose fic3
  putStrLn ("\n*****************************************")



main :: IO()
main = do
    buscadados
    putStrLn ("******************MENU*******************\n*****************************************")
    putStrLn ("\n1->Ver UC \n2->Ver Alunos \n3->Filtrar por UC/Alunos\n0->Sair \n    Qual a opção?:")
   -- a <- getLine
   -- opcao a

