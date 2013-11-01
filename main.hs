module Main where

import qualified Data.ByteString.Lazy.Char8 as LBS

main :: IO ()
main = LBS.getContents >>= LBS.putStrLn . LBS.map nul2lf
    where
        nul2lf '\0' = '\n'
        nul2lf a    = a

