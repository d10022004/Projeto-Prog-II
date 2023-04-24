module Main where

import Func (opcao)


main :: IO()
main = do
    putStrLn ("1->Ver UC \n2->Ver Alunos \n3->Filtrar por UC/Alunos\n 0->Sair \nQual a opção?:")
    a <- getLine
    opcao a

