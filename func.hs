module Func where

opcao :: Int -> String
opcao x 
    |x==1 = "Olá" 
    |x==2 = "Adeus"
    |x==3 = "Tomar no cu"
    |x==0 = "Sair"
    |otherwise = "Opção Invalida"