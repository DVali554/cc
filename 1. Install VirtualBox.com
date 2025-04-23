1. **Download VirtualBox** from [virtualbox.org] and install it on your system.  
2. **Download Ubuntu ISO** from [ubuntu.com]  
3. **Open VirtualBox**, click **New**, and create a Virtual Machine (VM).  
4. **Assign RAM** (e.g., 2 GB) and **create a virtual hard disk** (e.g., 10 GB).  
5. In **Settings > Storage**, attach the Ubuntu ISO file.  
6. **Start the VM** and follow the steps to **install Ubuntu Linux**.  
7. Once Linux is installed, **open the Terminal** inside the VM.  
8. Install compiler using:
   ```bash
   sudo apt update
   sudo apt install build-essential
   ```
9. Create a C file using:
   ```bash
   nano hello.c
   ```
   Paste:
   ```c
   #include <stdio.h>
   int main() {
       printf("Hello, VM!\n");
       return 0;
   }
   ```
10. Compile and run:
    ```bash
    gcc hello.c -o hello
    ./hello
    ``
