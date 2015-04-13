This is the only step that you will repeat every time you want to run swirl. First, you will load the package using the library() function. Then you will call the function that starts the magic! Type the following, pressing Enter after each line:

> library("swirl")
> swirl()

Step 5: Install an interactive course
The first time you start swirl, you'll be prompted to install a course. You can either install one of the recommended courses or visit our course repository for more options.

If you'd like to install a course that is not part of our course repository, type ?InstallCourses at the R prompt for a list of functions that will help you do so.

Step 6: Have fun!
Please visit our Help page if you have trouble completing any of these steps.

| You can exit swirl and return to the R prompt (>) at any time by pressing the Esc key. If you are already at the prompt,
| type bye() to exit and save your progress. When you exit properly, you'll see a short message letting you know you've done
| so.

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

| If at any point you'd like more information on a particular topic related to R, you can type help.start() at the prompt,
| which will open a menu of resources (either within RStudio or your default web browser, depending on your setup).
| Alternatively, a simple web search often yields the answer you're looking for.

***

| The easiest way to create a vector is with the c() function, which stands for 'concatenate' or 'combine'. To create a
| vector containing the numbers 1.1, 9, and 3.14, type c(1.1, 9, 3.14). Try it now and store the result in a variable called
| z.

| Behind the scenes, R is 'recycling' the 2 to make a vector of 2s and the 100 to make a vector of 100s. In other words, when
| you ask R to compute z * 2 + 100, what it really computes is this: z * c(2, 2, 2) + c(100, 100, 100).
