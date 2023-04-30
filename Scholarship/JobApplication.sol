pragma solidity ^0.8.0;

contract JobApplicationPortal {
    struct Applicant {
        address applicantAddress;
        string name;
        string email;
        string jobTitle;
        bool verified;
    }

    mapping(address => Applicant) public applicants;
    address[] public applicantAddresses;

    address public admin;

    event NewApplicant(address indexed applicantAddress, string name, string email, string jobTitle, bool verified);

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call this function.");
        _;
    }

    function apply(string memory _name, string memory _email, string memory _jobTitle) public {
        require(bytes(_name).length > 0, "Name cannot be empty.");
        require(bytes(_email).length > 0, "Email cannot be empty.");
        require(bytes(_jobTitle).length > 0, "Job title cannot be empty.");

        Applicant memory newApplicant = Applicant({
            applicantAddress: msg.sender,
            name: _name,
            email: _email,
            jobTitle: _jobTitle,
            verified: false
        });

        applicants[msg.sender] = newApplicant;
        applicantAddresses.push(msg.sender);

        emit NewApplicant(msg.sender, _name, _email, _jobTitle, false);
    }

    function verify(address _applicantAddress) public onlyAdmin {
        require(applicants[_applicantAddress].applicantAddress != address(0), "Applicant does not exist.");
        applicants[_applicantAddress].verified = true;
    }

    function getApplicantCount() public view returns (uint) {
        return applicantAddresses.length;
    }

    function getApplicantAddress(uint _index) public view returns (address) {
        return applicantAddresses[_index];
    }
}
