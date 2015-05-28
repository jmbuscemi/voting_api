# Voting API

## Description
This is a rails API which allows users to vote for candidates for public office. The API displays information in JSON.

###Candidates
* Shows an index of all candidates (/candidates/index) or one candidate by ID (/candidates/show?id=).
* Candidates must be created with a name, hometown, political party, and district.

### Voters
* Shows a particular voter and who the voter has voted for (/voters/show?id=)
* Allows the voter information to be updated.
* Voters must be created with a name, and political party.

### Votes
* Shows the total number of votes a candidate has (/votes/index)
* Can be created or destroyed.
* Votes must be created with a candidate id and a voter id.

### Authentication
Note this API does NOT have any  authentication built in. That code is still WIP.
