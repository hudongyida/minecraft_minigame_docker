#!/bin/bash

JAVA_BIN="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.462.b08-3.el9.x86_64/bin/java"

$JAVA_BIN -Xms1G -Xmx2G -XX:MaxMetaspaceSize=1G -jar paper-1.16.5-794.jar --nogui
