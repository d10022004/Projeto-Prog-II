module Main where

opcao :: Int -> Int
opcao x 
    |x==1 = 
    |x==2 =
    |x==3 =
    |x==0 =
    |otherwise = putStrLn "Opção Invalida"

main :: IO()
main x = 
    putStrLn "1-> \n 2-> \n 3-> \n 0-> \n"
    a <- getLine
    opcao a
