mkdir project
cp gulpfile.js project
mkdir project/source project/source/components project/build
cp index.html project/build
touch project/source/app.js
cd project
npm init
npm install --save-dev browserify gulp babelify@^6.2.0 vinyl-source-stream run-sequence opn gulp-connect
npm install --save react react-dom babelify babel-preset-react
gulp
