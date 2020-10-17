#!/bin/bash

swift-format -m format -i -r src/push-ios/Push;
swift-format -m format -i -r src/push-ios/PushTests;
swift-format -m format -i -r src/push-ios/PushUITests;