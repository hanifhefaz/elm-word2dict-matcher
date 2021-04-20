module QuestionsBank exposing (data)

{-|


# Questions Data

@docs data

-}


type alias Answer =
    { answer : String, question : String }


{-| Here you can define all your questions and answers.
-}
data : List Answer
data =
    [ { answer = "Sorry, there is no match to your text, please be more specific", question = "i" }
    , { answer = "In order to return a product, you have to provide a good reason for that. If the product was not working from the beginning, we will accept it. If you have warranty, we will accept it. otherwise, we do not accept the returns.", question = "What is the return policy?" }
    , { answer = "We can ship to any place you would like to. it may take several days, dependig on your distance.", question = "What are the shipping Options?" }
    , { answer = "There is no internation tax, however, you will have to pay the local tax for buying a new product.", question = "What are the international taxes, duties, etc. that I have to pay?" }
    , { answer = "when you buy things online, you will recieve your order in your mail.", question = "When will I receive my order?" }
    , { answer = "You can send us the order number, and we will send you the order back to you.", question = "What do I do if I never received my order?" }
    , { answer = "In that case, please contact us, or send us a mail.", question = "What do I do if I received a defective order?" }
    , { answer = "You can edit your order at anytime before you proceed to pay.", question = "How do I make changes to an order I’ve already placed?" }
    , { answer = "Our main brance is located in Bratislava, Twin City", question = "Where are you located?" }
    , { answer = "That belongs to you. we will never gurranty that.", question = "How do I make sure I order the right size?" }
    , { answer = "we are trying our best to reach to our customers, as soon as possible. but you can send us mails or call us at vvv@vvv.com and +421000000000", question = "How do I contact your company if my question isn’t answered here?" }
    , { answer = "You can track the status of your order, once it is shipped, with your tracking number.", question = "What is the status of my order?" }
    , { answer = "As far, as you have not paid, you can change your order.", question = "Can I change my order?" }
    , { answer = "we ship to almost any part of the world.", question = "Where do you ship?" }
    , { answer = "the day you buy a product, we prepare it for shipping. the next day it is shipped.", question = "How long does it take to ship my order?" }
    , { answer = "We accept, VISA, G-Pay, Master Card and Cash.", question = "What payment methods do you accept?" }
    , { answer = "the main currency we use here is Euro.", question = "Which currency will I be charged in?" }
    , { answer = "Yes, but each fast shipping will cost you extra money.", question = "Do you offer fast shipping?" }
    , { answer = "Yes. you can select the warranty when buying the product. it will cost you extra money, but has its own advantages.", question = "Is there a warranty?" }
    , { answer = "We have both new and old or used products. you can choose which one to buy.", question = "Are all your products new and original, or are they used?" }
    , { answer = "You can cancel your order anytime, before you get the product or before it is shipped. you just have to cancel it in your cart.", question = "Is it possible for me to cancel my order and what would be the procedure of doing it?" }
    , { answer = "You can buy any product from anywhere, but only to those countries, where we ship.", question = "Can I order and buy a phone from your web site from any country?" }
    , { answer = "There are no hidden costs at all. you will pay what you see you should pay.", question = "Are there any additional costs other than those that I see when confirming the order?" }
    , { answer = "Every new product is coming with its user manual.", question = "Can I expect to get the User manual together with the product?" }
    , { answer = "If you are eligible to the installments, you can buy products by installments.", question = "Can I buy any product in installments?" }
    , { answer = "Its because one is new and the other is used.", question = "Why on E-asy web site you have the same model with different prices?" }
    , { answer = "Different colors cost different.", question = "Why do you have different prices for different colors of same phone on your web site?" }
    , { answer = "We can deliver to any place that is listed in our shiping countries.", question = "Can you deliver in small towns and villages?" }
    , { answer = "You can come personally and take your product.", question = "Can I personally come and take over my order?" }
    , { answer = "If you are not satisfied with the product, you can return it before opening. we will pay you back in one month.", question = "Can I return my phone, what is the procedure and what is the time period that I can expect my money to be refunded?" }
    , { answer = "You will get a new product, once you shipped back the damaged one.", question = "Package was delivered to me damaged, how can I refund my loss?" }
    , { answer = "our stores are located in Slovakia, mainly in BA.", question = "Where are your stores located?" }
    , { answer = "we offer different warranties for different products.", question = "Do you offer an extended warranty or a device protection plan for phones?" }
    , { answer = "We do not repair products.", question = "Do you repair phones?" }
    , { answer = "We sell accessories as well.", question = "Do you sell accessories?" }
    , { answer = "Our privacy policy is written in the website.", question = "Where can I find your Privacy Policy?" }
    , { answer = "You can send us your feedback via email.", question = "How do I provide The Mobile Shop with feedback?" }
    , { answer = "You can check it if you come to the store to buy it.", question = "Is it possible to check the goods before buying?" }
    , { answer = "Account is not needed. but if you have one, that is good.", question = "Is it necessary to have an account to shop on E-asy?" }
    , { answer = "Please see the list of gift cards in our website that we accept.", question = "Can I use an item that has been given to me as a gift from a state sponsored or an NGO-funded freebie distribution programme to get discounts through exchange offers?" }
    , { answer = "You can order the product, which is out of stuck or temporarily unavailable.", question = "Can I order a product that is 'Out of Stock' or 'Temporarily Unavailable'?" }
    , { answer = "There are no hidden charges or fees.", question = "Are there any hidden charges (Octroi or Sales Tax) when I shop on E-asy?" }
    , { answer = "We will pay you in cash, or transfer to your bank account.", question = "How do you process Refund for an order, purchased using a Gift Card?" }
    , { answer = "You can track your order in our website by entering your order number in the tracking orders section.", question = "How can I track the status of my Refund?" }
    , { answer = "Please visit our trackig orders section.", question = "How can I check my order status?" }
    , { answer = "Around one month.", question = "When can I expect refund for my returned item?" }
    , { answer = "You can pay on cash or any credit card.", question = "What are the different modes of payment available?" }
    , { answer = "Hello there, please ask your questions, here and we will try to answer.", question = "Hello morning afternoon evening hi hey" }
    , { answer = "Good bye!", question = "bye thankyou thanks" }
    , { answer = "If you are not satisfied with your product, you can return it, before opening.", question = "Can i return a product?" }
    ]
