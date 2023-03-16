pragma solidity ^0.8.0;

contract Content {
    struct Post {
        uint256 id;
        address owner;
        string title;
        string body;
        uint256 votes;
    }

    Post[] public posts;
    mapping(address => mapping(uint256 => bool)) public upvoted;
    mapping(address => mapping(uint256 => bool)) public downvoted;

    function createPost(string memory _title, string memory _body) public {
        posts.push(Post(posts.length, msg.sender, _title, _body, 0));
    }

    function upvote(uint256 postId) public {
        require(!upvoted[msg.sender][postId], "Already upvoted");
        require(!downvoted[msg.sender][postId], "Already downvoted");
        posts[postId].votes += 1;
        upvoted[msg.sender][postId] = true;
    }

    function downvote(uint256 postId) public {
        require(!downvoted[msg.sender][postId], "Already downvoted");
        require(!upvoted[msg.sender][postId], "Already upvoted");
        posts[postId].votes -= 1;
        downvoted[msg.sender][postId] = true;
    }

    function getPosts() public view returns (string memory) {
        string memory output = '{"posts": [';
        for (uint256 i = 0; i < posts.length; i++) {
            uint256 id = posts[i].id;
            string memory title = posts[i].title;
            string memory body = posts[i].body;
            uint256 votes = posts[i].votes;
            output = string(abi.encodePacked(output, '{"id":"', toString(id), '","title":"', title, '","body":"', body, '","votes":"', toString(votes), '"}'));
            if (i != posts.length - 1) {
                output = string(abi.encodePacked(output, ','));
            }
        }
        output = string(abi.encodePacked(output, ']}'));
        return output;
    }

    function toString(uint256 value) internal pure returns (string memory) {
        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + value % 10));
            value /= 10;
        }
        return string(buffer);
    }
    
    function getPostCount() public view returns (uint256) {
        return posts.length;
    }
}
