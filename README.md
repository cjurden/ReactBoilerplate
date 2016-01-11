# ReactBoilerplate
Starter kit for React using Babel, Browserify and Gulp. Based off of React Essentials
**please post issues as they are found!**
###To Run
move to directory where you want the project to be created. the script is self-destructing.

if no name is provided, project folder will be called "boilerplate"
```
git clone https://github.com/cjurden/ReactBoilerplate <project_name>
sh boilerplate.sh
```
Note: must have Node, npm and git installed. The process of installing node modules will take some time. **Be patient!**

###Set up as git repository
1. Create a new empty repository on github, do not add README, license or .gitignore
2. Move to project folder
3. Initialize repository

  ```
  git init
  ```

4. Add all files to new local repository (staging for commit)

  ```
  git add --all
  ```

5. Commit files

  ```
  git commit -m "initial commit"
  ```

6. Add remote repository URL (found on repository page on github.com) and verify

  ```
  git remote add origin <remote URL>
  git remove -v
  ```

7. Push changes to Github

  ```
  git push origin master
  ```
