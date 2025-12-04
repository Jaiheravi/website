module Main where

import Data.Function

(|>) :: a -> (a -> b) -> b
(|>) = (&) -- Maybe I can create this function myself so I don't need to import a dependency

main :: IO ()
main = html testContent |> putStrLn

{- $>
do
  putStrLn "--------------------------------------------------"
  main
  putStrLn "--------------------------------------------------"
<$ -}

testContent :: String
testContent = "Hello world!"

html :: String -> String
html content = htmlOpen <> content <> htmlEnd

htmlOpen :: String
htmlOpen = "<html><body>"

htmlEnd :: String
htmlEnd = "</body></html>"
