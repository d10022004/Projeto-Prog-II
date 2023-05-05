module Funcchamar where
import System.IO 
import Distribution.PackageDescription (versionToPkgconfigVersion)

chamaselecop ::  Int -> IO()
chamaselecop x 
    |x==1 = putStrLn "Qual o nome da cadeira?"
            uc <- getLine
    |x==2 = putStrLn "Qual o numero do aluno?(alxxx)"
            al <- getLine
    |x==0 = main
    |otherwise = putStrLn "INCORRECT OPTION"
                 main

chamaselec :: IO()
chamaselec = do
    putStrLn ("1->UCS\n2->Alunos\n0->Sair")
    op <- getLine 
    chamaselecop op

