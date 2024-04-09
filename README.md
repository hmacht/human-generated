# Welecome to Human Generated! 🏄‍♀️

## Our Mission
Human Generated mission is to mark text online that is human generated. Upload content and then you will receive a seal of authenicity and a URL for proof. The goal is to become a source of truth for people online.

Building The I.D.H.G.C (International Databse of Human Generated Content). This resource will prove to be vital in the coming years.

## Archetecture

Design

Our main design principal is future-proof. We are not getting to fancy with features, this needs to be as striped down as possible. Certifying content is the main goal, and it should be as easy as possible.


Main Model is out ```VerificationRequest```

This holds all data about incoming certificate requests
- ```title```
- ```content```
- ```certificate_url```
- ```status```

Verifying Content
- AI text Verification is currently powered by ```GPTZero```
- Jobs are processed in the background using Sidkiq

User Authentication
- Powed by device
- in order to submit request, you must be an authenticated user

## System Versions:
* Ruby version: ```3.2.2```
* Rails version: ```7.0.0```
* Tailwindcss

## Contributing
We encourage you to contribute to Human Generated! Please check out the Contributing to Human Generated guide for guidelines about how to proceed. Join us!

Everyone interacting in Human Generated and its sub-projects' codebases, issue trackers, chat rooms, and mailing lists is expected to follow the Human Generated code of conduct.

## License
Human Generated is released under the [MIT License](https://opensource.org/license/MIT).
