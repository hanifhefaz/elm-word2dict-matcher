module QuestionsBank exposing
    ( data
    , Answer
    )

{-|


# Questions Data

@docs data


# Answer Model

@docs Answer

-}


{-| This model defines the question and the answer.
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
    , { answer = "Our main brance is located in Bratislava, Twin City", question = "Where are the location of your branches?" }
    , { answer = "That belongs to you. we will never gurranty that.", question = "How do I make sure I order the right size?" }
    , { answer = "we are trying our best to reach to our customers, as soon as possible. but you can send us mails or call us at vvv@vvv.com and +421000000000", question = "How do I contact your company if my question isn’t answered here?" }
    , { answer = "You can track the status of your order, once it is shipped, with your tracking number.", question = "What is the status of my order? and where can i check it?" }
    , { answer = "As far, as you have not paid, you can change your order.", question = "Can I change my order?" }
    , { answer = "we ship to almost any part of the world.", question = "Which cities and stats are you currently shipping?" }
    , { answer = "the day you buy a product, we prepare it for shipping. the next day it is shipped.", question = "How long does it take to ship my order?" }
    , { answer = "We accept, VISA, G-Pay, Master Card and Cash.", question = "What payment methods do you accept?" }
    , { answer = "the main currency we use here is Euro.", question = "Which currency will I be charged in?" }
    , { answer = "Yes, but each fast shipping will cost you extra money.", question = "Do you offer fast shipping?" }
    , { answer = "Yes. you can select the warranty when buying the product. it will cost you extra money, but has its own advantages.", question = "Will there be warranty for the item i purchase?" }
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
    , { answer = "we offer different warranties for different products.", question = "Do you offer an extended warranty or a device protection plan for phones?" }
    , { answer = "We do not repair products.", question = "Do you repair phones?" }
    , { answer = "We sell accessories as well.", question = "Do you sell accessories?" }
    , { answer = "Our privacy policy is written in the website.", question = "Where can I find your Privacy Policy?" }
    , { answer = "You can send us your feedback via email.", question = "How can i send you feedback?" }
    , { answer = "You can check it if you come to the store to buy it.", question = "Is it possible to check the goods before buying?" }
    , { answer = "Account is not needed. but if you have one, that is good.", question = "Is it necessary to have an account to shop on E-asy?" }
    , { answer = "Please see the list of gift cards in our website that we accept.", question = "Can I use an item that has been given to me as a gift from a state sponsored or an NGO-funded freebie distribution programme to get discounts through exchange offers?" }
    , { answer = "You can order the product, which is out of stuck or temporarily unavailable.", question = "Can I order a product that is 'Out of Stock' or 'Temporarily Unavailable'?" }
    , { answer = "There are no hidden charges or fees.", question = "Are there any hidden charges (Octroi or Sales Tax) when I shop on E-asy?" }
    , { answer = "We will pay you in cash, or transfer to your bank account.", question = "How do you process Refund for an order, purchased using a Gift Card?" }
    , { answer = "You can track your order in our website by entering your order number in the tracking orders section.", question = "How can I track the status of my Refund?" }
    , { answer = "Around one month.", question = "When can I expect refund for my returned item?" }
    , { answer = "You can pay on cash or any credit card.", question = "What are the different modes of payment available?" }
    , { answer = "When adding item to the cart, you can choose, which counrty to ship from. and that means the product is made of that country", question = "Where am I buying the item from?"}
    , { answer = "Each product has its own gurantee period.", question = "How long is the product guaranteed for?"}
    , { answer = "It may take up to 90 days for the item to recieve. if you did not, you can contact us.", question = "How long will it take for the product to arrive?"}
    , { answer = "Yes, we have discounts as well. they are coming only in special days!", question = "Do you have any discount program?"}
    , { answer = "Everything thing regarding the terms and warranty are written in the warranty card.", question = "Is the return and refund process well-defined with clear deadlines?"}
    , { answer = "We will not send you other products than the ones you buy.", question = "Is it how it looks in the picture?"}
    , { answer = "You will be prompted to the privacy of payments, when you want to pay.", question = "How to know the privacy and Security of payment system?"}
    , { answer = "Different products have free shipping, but not all products are shipped for free.", question = "Is shipping included in the price?"}
    , { answer = "You can have a loot to the reviews of the products.", question = "How can I ensure the quality"}
    , { answer = "We encourage our customers to buy our products only in our website. buying our products over the internet might be a trap and hence we do not gurrantee that.", question = "Is the payment method safe?"}
    , { answer = "Each product has its own warantee period. You can see that when purchasing the product.", question = "How long is the warantee and what services are associated with it? (e.g. is it possible to have item repaired by the store without cost for at least 2 years)"}
    , { answer = "You can cancel your order at any time, before payment.", question = "Is it possible to cancel the item?"}
    , { answer = "Our website is 100% secure for payments.", question = "Is your website secure to pay?"}
    , { answer = "Except the cost and shipping, there are no other costs included. the taxes are included in the item price.", question = "Will there be custom clearance required (pay customs) while shipping this item to my country?"}
    , { answer = "Each product has its own lifespan. please read it before buying.", question = "What is the expected lifespan of the item? (e.g. does it work without problems for at least 2 years)?"}
    , { answer = "You can return it back to us, and if we get it without damage, we will pay you back. there is no limitation for time.", question = "If I'm not satisfied with the product, how many days I have to return it?"}
    , { answer = "Each product has its own insurance, if you purchase it while buying.", question = "Does the item come with insurance?"}
    , { answer = "You will only have to pay the shipping costs.", question = "If I'm not satisfied with the product, do I have to pay for returning the product?"}
    , { answer = "All our prices are reasonable enough to buy.", question = "Is the price reasonable? (i.e. does it match item's parameters and is not significantly higher than price of similar products on the market)?"}
    , { answer = "You will get exactly the same product as you see in our store. please read about the item carefully, we do not gurranty if it meets your needs.", question = "Does the item really meet my actual needs?"}
    , { answer = "You will get exactly the same product as you see in our store. please read about the item carefully.", question = "is the real device as the same as in the product page?"}
    , { answer = "We have loyality points system for our regular customers only. those who already have accounts in our store.", question = "Is there a loyalty discount for shopping in store?"}
    , { answer = "Your delivery information is sent to UPS immediately after your payment is processed, so it's difficult to change this after your order has been placed. Please enter your address details carefully!If you do need to change your shipping address, please contact us as soon as possible.", question = "Can I change my delivery address?"}
    , { answer = "Define Instruments products are designed and manufactured in Slovakia according to rigorous quality standards. We are an established company and our products have been field tested for more than 15 years.", question = "Do you sell quality products?"}
    , { answer = "Any item(s) purchased on our website are eligible for return, provided they are in new condition as detailed in our Returns Policy.", question = "Which products can be returned?"}
    , { answer = "It is really up to you. if you want to buy item with VAT, then you don't have to pay for VAT somewhere else.", question = "Is VAT charged and included in the price?"}
    , { answer = "Please try again in a little while. If the payment is still not accepted, please verify your account balance. If everything is as it should, but you still can't make the payment, please contact us@e-asy.com notify us about the problem. We can manage the order manually.", question = "What should I do if the payment is not accepted?"}
    , { answer = "Please register in our website in the registration section to create an account.", question = "How do create an account?"}
    , { answer = "You can call us on 01234567 and we will reset your password.", question = "How can I retrieve my password? Or how can I reset it?"}
    , { answer = "You will be notified about your order, each time a new process is begun.", question = "Will I be notified about my order?"}
    , { answer = "We endeavour to process all orders within 3 working days. Orders placed during a sale or promotional period may take up to 5 working days to be processed.", question = "When will my order be processed?"}
    , { answer = "we cannot apply discounts after the order has been placed as our merchant takes payment at time of purchase and discounts are outside the capabilities of our refund system. Please note, the sign up discount is a single use code with no expiry for use on full-priced products only.", question = "I forgot to apply a promo code to my order. will you refund me the discount?"}
    , { answer = "if you have any questions you can email contact@e-asy.com​​​​​​​", question = "Is there someone, I can contact directly with?"}
    , { answer = "If you never received your order, you can contact us to our email address.", question = "What do I do, if I never received my order?"}
    , { answer = "We are open 24/7 a week. you can order at anytime.", question = "What are your working hours?"}
    , { answer = "If you pay for the fast shipping, you will get the item fast.", question = "How can i get my item via fast shipping?"}
    , { answer = "You can see the prices only in the store's currency.", question = "Can I view the prices in my local currency?"}
    , { answer = "You can use a maximum of two gift vouchers for a single order.", question = "How many gift vouchers can I use for my order?"}
    , { answer = "Items bought on sale are not elligible to return.", question = "I bought something on sale, can I return it?"}
    , { answer = "If the tracking has not updated, it might mean the package hasn’t yet been picked up.", question = "Why is my tracking number not updating?"}
    , { answer = "Hello there, please ask your questions, here and we will try to answer.", question = "Hello morning afternoon evening hi hey" }
    , { answer = "Good bye!", question = "bye thankyou thanks" }
    ]
