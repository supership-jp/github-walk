# github-walk

This contains ruby script to administrate GitHub organization.
able to get following contents from GitHub by API.

- `teams`: Get All team name in the organization.
- `teammembers`: Get All team name and member ID list in the organization.
- `repos`: Get all repositories name in the organization.
- `allmembers`: Get all members ID and name in the organization.

All of results are out from STDOUT, formatted by CSV.

# How to use

- You should be an owner of the your organization.
- You should get personal access token from https://github.com/settings/tokens . The access token need scopes `read:org`.
