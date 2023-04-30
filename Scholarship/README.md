#HireHope: Job Application Helper for Homeless Individuals
Overview
HireHope is a proof-of-concept decentralized web application built using Ethereum blockchain technology to assist homeless individuals in job application processes. The platform is designed to provide a safe and secure environment where job applicants, employers, and job coaches can interact with each other to create a collaborative network aimed at empowering and uplifting homeless individuals. The HireHope platform consists of three primary components, job applicants, job coaches, and employers. Our platform streamlines the job application process by verifying applicant identity and qualifications, matching applicants with relevant job postings, and providing a secure and efficient disbursement process for successful job applicants.

Wallet used
We use Metamask, a web wallet, for this project. We have deployed and tested the HireHope smart contracts on a private Ethereum network using Ganache. Additionally, we have versions of HireHope deployed on Rinkeby and Goerli testnets, which can be found in other repository folders.

For more information:

Metamask: https://metamask.io/
Ganache: https://trufflesuite.com/ganache/
Solidity contracts
There are three smart contracts in HireHope, and they are all deployed using Ganache via Remix IDE. You can use the "HireHope.sol" contract to deploy HireHope to a different blockchain via Remix IDE, or you can use the addresses below on Remix IDE to view the functions:

Job Applicant Smart Contract Address:
0x933d60E5F1AEff1f37Dd5792Db0cd2E0fd9157d1

Job Coach Smart Contract Address:
0x967B23d6e0DD4170ecAeA46c1Fe92D94B11F1016

Employer Smart Contract Address:
0xfBf63710005a304556802b4bffC018585E041cf1
Running the front end in local node
Visual Studio Code
We use Visual Studio Code to create and edit our project. To run the local web server, you will need to have Visual Studio Code installed. You can find the latest version here: https://code.visualstudio.com/

Download all the files in this repository and place them in a single folder in your local drive. Unzip any zip files.

Open the folder using Visual Studio Code.

Node.js and NPM (Node Package Manager)
You will need Node.js and NPM, which come together.

NB: Check if Node and NPM are already installed by inputting the following commands in the terminal:

css
Copy code
node --version
npm --version
If they are not installed, visit https://nodejs.org/en/ to install them.

Running the local server
To execute the local web server, type the following command in the terminal:

Copy code
node server.js
In your browser, navigate to the following link to access the frontend:

http://localhost:3300

If the local web server is set up correctly, you will see the landing page below.

image

Each button on the landing page provides access to three different HireHope user interfaces (Job Applicant, Job Coach, and Employer).

Job Applicant Page
The Job Applicant Page allows the applicant to enter their personal information and work experience. The smart contract stores the wallet ID in the applicant record when a transaction is executed. This will be





