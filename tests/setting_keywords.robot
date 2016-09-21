# It should be highlight all keywords
*** Settings ***
Library          Selenium2Library
Resource          ./resource.robot
Variables         ./vars.robot
Documentation     This is document
Metadata          Version    2.0
Suite Setup       Open Browser
Suite Teardown    Close All Browsers
Force Tags        do
Default Tags   	   wip
Test Setup        Do It
Test Teardown     Do It Tomorrow
Test Template     Template Func
Test Timeout      10s