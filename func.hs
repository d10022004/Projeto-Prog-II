module Func where

import System.IO
import Data.List

opcao :: Int -> IO ()
opcao x 
    | x == 1 = listuc
    -- | x == 2 = 
    -- | x == 3 = 
    -- | x == 0 = "Sair"
    | otherwise = putStrLn "Opção Inválida"

listuc :: IO ()
listuc = do
    handle <- openFile "listaalunos.txt" ReadMode
    contents <- hGetContents handle
    if "1" `isInfixOf` contents then putStrLn "1"
    else putStrLn "A string não foi encontrada no arquivo."
    hClose handle
