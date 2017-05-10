module Domain where

type Person = { firstName :: FirstName, lastName :: LastName }
data UnpaidMembership = UnpaidMembership
  { people :: Array Person
  , product :: Product
  , amount :: Amount
  }
data PaidMembership = PaidMembership
  { people :: Array Person
  , product :: Product
  }
data Product = Camping Amount | Hotel Amount | Golf Amount
-- data Purchase = Purchase
--   { membership :: Membership
--   , quantity :: Quantity
--   , transactions :: Array Transaction
--   }
data Transaction = Transaction
  { payment :: Payment
  , product :: Product
  }
data Payment = Payment
  { paymentSource :: PaymentSource
  , amount :: Amount
  }
data PaymentSource
  = CreditCard CcNumber
  | Discount
type FirstName = String
type LastName = String
type Amount = Int
-- type Time
type Price = Int
type Quantity = Int
type CcNumber = String

purchase :: Array Person -> Product -> UnpaidMembership
purchase people product =
  let
    amount = case product of
      Camping a -> a
      Hotel a -> a
      Golf a -> a
  in
    UnpaidMembership
      { people
      , product
      , amount
      }

--pay :: Array Transaction -> UnpaidMembership -> Either FailureReason PaidMembership
