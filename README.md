# RoR Chat

[Task](https://gist.github.com/fee1good/a58e125ee6b89e466825efbb07737a77)

## Functionality

### Sign up
- via Registration form
- OAuth Facebook
### User has access
- View all comments (Page by page).
- View only own comments (Page by page).
- Edit and delete own comments
- Edit & delete profile (with comments deleting)

## Development
### Initial
`rvm gemset create ror_chat && bundle && rake db:setup && yarn`
### Tests
`bundle exec rspec`
### Code Analyzers
`./linters.sh`
