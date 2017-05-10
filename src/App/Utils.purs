module Utils where

foreign import debug :: forall a. a -> a

apply :: forall a b. (a -> b) -> a -> b
apply fn a = fn a

flip :: forall a b. a -> (a -> b) -> b
flip a fn = fn a

infixr 0 apply as <|
infixl 1 flip as |>
