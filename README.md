# world_time_app

My first functional app. It's about telling current time in various countries (realtime)

## Getting Started

I did this project before Flutter v2, and so null safety isn't considered

## Time source

The app uses the device clock and the IANA time-zone database bundled with
the timezone package. Time conversion works offline, and requires an
accurate device clock. Run flutter pub get to install dependencies, and
update the timezone package when time-zone rules change.
