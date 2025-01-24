# Technical Setup

> **Disclaimer:** This document was written by an AI, so if anything seems off, blame the robots. Verify and update as needed!

## Tools and Dependencies
- Required tools: SQL database management tool (e.g., MySQL Workbench), Lua interpreter, Python 3.x, XML editor (e.g., Visual Studio Code).
- Specific game versions or DLCs required: Civilization VI with all expansions (Rise and Fall, Gathering Storm) and DLCs.

## Setup Instructions
1. Clone the repository: `git clone [repository-url]`
2. Install required dependencies:
   - For SQL: `sudo apt-get install mysql-server` (Linux) or download from [MySQL official site](https://dev.mysql.com/downloads/installer/) (Windows/Mac).
   - For Lua: `sudo apt-get install lua5.3` (Linux) or download from [Lua official site](https://www.lua.org/download.html) (Windows/Mac).
   - For Python: `sudo apt-get install python3` (Linux) or download from [Python official site](https://www.python.org/downloads/) (Windows/Mac).
   - For XML: Use Visual Studio Code or any preferred XML editor.
3. Load the mod in the game:
   - Copy the mod files to the Civilization VI Mods directory.
   - Launch Civilization VI and enable the mod from the Additional Content menu.
   - Start a new game to test the mod in-game.

## Workflow
- Branching strategy: Each feature is developed on its own branch.
- Commit message conventions: Use the format `[Feature] Updated AI behavior for diplomacy.`
