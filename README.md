# tipme
Simple iOS app to calculate tip and total amount of bill needed.


# Pre-work - Tipme

Tipme is a tip calculator application for iOS.

Submitted by: Tuấn Anh Nguyễn

Time spent: 5 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [x] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following features are implemented:

- [x] Align UI so that keypad won't hide it
- [x] Add calculation for sharing total amount of bill amongs up to 6 people
- [x] Auto recalculate when user changes tip percentage in setting
- [x] Add default button for user to return to default tip percentages
- [x] Simple and easy to use ui with dark, white, and blue color

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/XerDjIi.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

As I build the app, I ran into the following challenges:
- Big changes from swift 2 to swift 3, so it's hard for me to make research, because many explanations found on stackoverflow, or even on Apple's site, was on swift 2.
- Was unable to make UI scrollup when keypad appears.
- Was unable to make format right in text field. For example, while user is inputing the bill, they still see the "$" in the field.
- Haven't got any ideas about which animation is appropriate for the app

## License

    Copyright [2016] [Tuấn Anh Nguyễn]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
