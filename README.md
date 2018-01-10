Small projects

Before you learn more about Solidity and embark on bigger projects, you need to get a taste of how your good knowledge of Geth along with your budding knowledge of Solidity and of Truffle can get you to create a small application.

We can foresee your hitting many problems, so head to the Slack channel with your code repo and your troubles. Do not expand the specification scope. Make it as narrow as possible first. Even when too narrow for comfort we can expect you to make mistakes. So tell us your repo address and iterate on our comments as many times as it takes to get it straight.

Doing, and iterating on, them will help you with the final exam.

It is better you do not attack all problems in parallel so as not to make the same mistakes in different projects. You do not need to create a Web page this time. So when we mention "Web page" it is to give you an idea of the desired result.

Oh! and if the prospect of taking these first steps alone feels unsurmountable, you might as well find a partner with whom to code. Again, head to the Slack channel for that.

Splitter
You will create a smart contract named Splitter whereby:

there are 3 people: Alice, Bob and Carol
we can see the balance of the Splitter contract on the web page
whenever Alice sends ether to the contract, half of it goes to Bob and the other half to Carol
we can see the balances of Alice, Bob and Carol on the web page
we can send ether to it from the web page
It would be even better if you could team up with different people impersonating Alice, Bob and Carol, all cooperating on a test net.

Stretch goals:

add a kill switch to the whole contract
make the contract a utility that can be used by David, Emma and anybody with an address to split Ether between any 2 other addresses of their own choice
cover potentially bad input data
Do not:

split between more than 2 people
Remittance
You will create a smart contract named Remittance whereby:

there are three people: Alice, Bob & Carol.
Alice wants to send funds to Bob, but she only has ether & Bob wants to be paid in local currency.
luckily, Carol runs an exchange shop that converts ether to local currency.
Therefore, to get the funds to Bob, Alice will allow the funds to be transferred through Carol's Exchange Shop. Carol will convert the ether from Alice into local currency for Bob (possibly minus commission).

To successfully withdraw the ether from Alice, Carol needs to submit two passwords to Alice's Remittance contract: one password that Alice gave to Carol in an email and another password that Alice sent to Bob over SMS. Since they each have only half of the puzzle, Bob & Carol need to meet in person so they can supply both passwords to the contract. This is a security measure. It may help to understand this use-case as similar to a 2-factor authentication.

Once Carol & Bob meet and Bob gives Carol his password from Alice, Carol can submit both passwords to Alice's remittance contract. If the passwords are correct, the contract will release the ether to Carol who will then convert it into local funds and give those to Bob (again, possibly minus commission).

Of course, for safety, no one should send their passwords to the blockchain in the clear.

Stretch goals:

add a deadline, after which Alice can claim back the unchallenged Ether
add a limit to how far in the future the deadline can be
add a kill switch to the whole contract
plug a security hole (which one?) by changing one password to the recipient's address
make the contract a utility that can be used by David, Emma and anybody with an address
make you, the owner of the contract, take a cut of the Ethers smaller than what it would cost Alice to deploy the same contract herself
Rock Paper Scissors
You will create a smart contract named RockPaperScissors whereby:

Alice and Bob can play the classic rock paper scissors game.
to enrol, each player needs to deposit the right Ether amount.
to play, each player submits their unique move.
the contract decides and rewards the winner with all Ether.
How can this be the 3rd project and not the 1st?? Try.

Stretch goals:

make it a utility whereby any 2 people can decide to play against each other.
reduce gas costs as much as you can.
How
We purposely left a lot to be decided to give you a chance to think things through.

Tips:

for your function to accept Ether, you need to add the payable flag to it.
the usual hash function in Solidity is keccak256(param1, param2, ...)
