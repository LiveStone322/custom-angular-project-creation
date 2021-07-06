@echo off
set name="%1"
IF %name% EQU "" (
set name="site"
)

set styles="%2"
IF %styles% EQU "" (
set styles="scss"
)

set skip-tests="%3"
IF %skip-tests% EQU "" (
set skip-tests="true"
)

echo name: %name%
echo styles: %styles%
echo skip tests: %skip-tests%

ng new %name% --style=%styles% --skip-tests=%skip-tests% --routing=true --strict=true

cd ./%name%/
npm remove tslint
npm remove karma karma-chrome-launcher karma-coverage karma-jasmine karma-jasmine-html-reporter @types/jasmine jasmine-core jasmine-spec-reporter 
rm -rf karma.conf.js
rm -rf ./src/test.ts
npm i eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin

xcopy /y C:\BATCH\.eslintrc.json .\