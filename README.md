# 🛠️ Lexical Analyzer & Syntax Parser in C (Flex & Bison)

## 📌 Overview
This project implements a **Lexical Analyzer** and **Syntax Parser** using **Flex** and **Bison** in **C**.  
- The **Lexical Analyzer (`lexer.l`)** reads input and **breaks it into tokens** (e.g., numbers, identifiers, operators).  
- The **Syntax Parser (`parser.y`)** validates the structure of these tokens based on predefined grammar rules.  
- The program processes **basic mathematical expressions and assignment statements**.  

### 🎯 **Example Inputs & Outputs**
| **Input**       | **Lexer Output (Tokens)**  | **Parser Output** |
|----------------|---------------------------|--------------------|
| `x = 10;`     | `IDENTIFIER: x, ASSIGNMENT OPERATOR: =, NUMBER: 10, SEMICOLON: ;` | ✅ `Parsed: Assignment Statement` |
| `y = 5 + 2;`  | `IDENTIFIER: y, ASSIGNMENT OPERATOR: =, NUMBER: 5, PLUS OPERATOR: +, NUMBER: 2, SEMICOLON: ;` | ✅ `Parsed: Addition Operation` |
| `a = 4 * 3;`  | `IDENTIFIER: a, ASSIGNMENT OPERATOR: =, NUMBER: 4, MULTIPLICATION OPERATOR: *, NUMBER: 3, SEMICOLON: ;` | ✅ `Parsed: Multiplication Operation` |
| `x 10;`       | `IDENTIFIER: x, NUMBER: 10, SEMICOLON: ;` | ❌ `Syntax Error` |

---

## 📌 Tools Used
- **Flex (`win_flex`)** → Generates the Lexical Analyzer  
- **Bison (`win_bison`)** → Generates the Syntax Parser  
- **GCC Compiler (`gcc`)** → Compiles the C program  
- **GitHub** → Code versioning and submission  
- **PowerShell** → Terminal output recording  
- **OBS Studio** → Screen recording for demo  

---

## 📌 Installation & Setup

### **🔹 Step 1: Install Required Tools**
1. **Download and Install Flex & Bison**  
   - [Download `win_flex` & `win_bison`](https://sourceforge.net/projects/winflexbison/)
   - Extract them to:  
     ```
     C:\win_flex_bison
     ```
   - Add the path to your system **Environment Variables**:
     ```
     C:\win_flex_bison
     ```
2. **Install MinGW-w64 (GCC Compiler)**  
   - [Download MinGW-w64](https://winlibs.com/)  
   - Extract and add `C:\mingw64\bin` to your system **Environment Variables**.  

3. **Verify Installation**
   ```sh
   gcc --version
   win_flex --version
   win_bison --version
