### `norminette` Output Simplification Guide

This guide explains how to modify the output of `norminette` by replacing "Error!" with "OK!" and removing detailed error lines, while showing the original and modified output.

---

#### Example of Output Transformation:

**Original Output:**

```bash
$ norminette 
test1.c: Error!
Error: SPACE_BEFORE_FUNC    (line:  13, col:   4):      space before function name
test2.c: OK!
test3.c: Error!
Error: EMPTY_LINE_EOF       (line:  12, col:   1):      Empty line at end of file
```

**Modified Output:**

```bash
$ norminette 
test1.c: OK!
test2.c: OK!
test3.c: OK!
```

---

#### Steps to Create an Alias:

1. **Open Your Shell Configuration File**  
   Depending on your shell, open the appropriate configuration file:
   - **bash**: `~/.bashrc`
   - **zsh**: `~/.zshrc`

2. **Add the Alias Command**  
   Append the following line to your configuration file:

   ```bash
   alias norminette='norminette | sed -e 's/Error!/OK!/' -e '/^Error:/d''
   ```

3. **Apply the Changes**  
   Save the file and run the following command to apply the changes:

   ```bash
   source ~/.bashrc  # For bash
   source ~/.zshrc   # For zsh
   ```

4. **Use the Alias**  
   You can now run `norminette` as usual, and the output will be simplified.

---

This guide helps you transform the `norminette` output for easier reading, while keeping both the original and modified outputs for reference.