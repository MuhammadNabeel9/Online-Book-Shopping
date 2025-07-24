# Online-Book-Shopping
3 semester final project of Assembly Language
Working of code
Step-by-Step Process
1. Welcome screen
First of all, RUN our code. 
Welcome screen will be opened
2. Category of Books
Enter the required Number
The Book Category will Display
NOTE: Only Required Number should be entered, otherwise program will terminate

<img width="1120" height="376" alt="image" src="https://github.com/user-attachments/assets/3fc14fe9-19bd-4015-b7b9-334da80e0b3d" />
<img width="998" height="407" alt="image" src="https://github.com/user-attachments/assets/cc15478b-e48b-4fdb-a821-09d9cef7c82c" />

3. Category Selection
Now select any category that you want 
From serial no 1 to 3
4. Category 1
Category 1 is for ENGLISH NOVELS
All available books will be shown of category 1
NOTE: Same books can be ordered multiple time. 
5. Category 2
Category 2 is for AMERICAN COMICS
All available books will be shown of category 2
NOTE: Select books within their serial number

<img width="1044" height="601" alt="image" src="https://github.com/user-attachments/assets/733dc1c4-fa53-43f3-a9f1-db984084f8f2" />
<img width="1044" height="369" alt="image" src="https://github.com/user-attachments/assets/3f1a307a-0430-4168-a4f2-5828abe6df22" />

6. Category 3
Category 3 is for ISLAMIC BOOKS
All available books will be shown of category 3
NOTE: Select books within their serial number

7. Grand Total
Entered Book stored in program memory
Then at the end, total bill will show.
NOTE: you can enter multiple books of different categories.

<img width="1039" height="481" alt="image" src="https://github.com/user-attachments/assets/1e5235f2-0d0c-40ba-99e0-e87e0e128b8c" />
<img width="1039" height="496" alt="image" src="https://github.com/user-attachments/assets/92092397-8dba-411f-a646-d6d4f96bd91d" />

Main Components of Code
This assembly code, written for the EMU8086 assembler, implements an Online Book Store system. It interacts with users, displays book categories, processes selections, calculates total prices, and asks for additional purchases. 
The main components of the code include:
DATA SECTION (.data)
Messages & Prompts: Contains various db (data byte) declarations for welcome messages, book categories, prompts for user inputs, and error messages.
Book Lists: Contains book names and their respective prices for three categories:
English Novels
American Comics
Islamic Books

2. Code Section (.code)
Main Procedure (main proc).
Initializes the data segment.
Calls (DisplayWelcome) to show a welcome message.
Starts a loop (Mainloop).
Display categories (DisplayCategories).
Process book selection (ProcessBookPurchase).
Asks if the user wants to continue (AskToContinue).
If enter 1 it repeats.
If enter 0 it display final total (DisplayFinalTotal).
3. Procedures (Functions)
DisplayWelcome: Print the welcome screen.
DisplayCategories: Shows book categories and prompts the user to choose.
ProcessBookPurchase: Handles book selection and directs the user to

AskToContinue: Asks the user if they want to buy more.
DisplayFinalTotal: Shows the total bill.
DisplayNumber: Converts a numeric value into ASCII for display.
Invalid_Input: Handles invalid input. 
4. Input/Output Operartions
Uses mov ah, 02  and int 21h , (BIOS interrupt) to print message.
Uses mov ah, 01  and int 21h to take user input.

5. Program Control Flow
Loops using cmp , je, and jmp instructions.
Manages conditions for valid and invalid inputs.
6. Arithmetic Operations
Use mul for multiplication
Use div for division
Handles integer overflow by checking carry flag (jnc and mov total_sum, 0FFFFH





