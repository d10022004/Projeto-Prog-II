module Funcchamar where
import System.IO 


chamaselecop ::  Int -> IO()
chamaselecop x 
    |x==1 = do
        putStrLn "Qual o nome da cadeira?"
        uc <- getLine
        putStrLn "Pressione Enter para continuar..."
        hFlush stdout
        getLine
    |x==2 = do
        putStrLn "Qual o numero do aluno?(alxxx)"
        al <- getLine
        putStrLn "Pressione Enter para continuar..."
        hFlush stdout
        getLine
    |x==0 = Nothing
    |otherwise = do 
        putStrLn "OPCAO INVALIDA"
        putStrLn "Pressione Enter para continuar..."
        hFlush stdout
        getLine

chamaselec :: IO()
chamaselec = do
    putStrLn ("1->UCS\n2->Alunos\n0->Sair")
    op <- getLine 
    chamaselecop op

