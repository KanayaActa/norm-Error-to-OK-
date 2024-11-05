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

2. **Add the Alias Commands**  
   Append the following lines to your configuration file:

   ```bash
   alias norminette='norminette | sed -e 's/Error!/OK!/' -e '/^Error:/d''
   alias alias='alias | sed -e '/^alias/d'' -e '/^norminette/d''
   ```

3. **Apply the Changes**  
   Save the file and run the following command to apply the changes:

   ```bash
   source ~/.bashrc  # For bash
   source ~/.zshrc   # For zsh
   ```

4. **Use the Aliases**  
   Now you can run `norminette` and `alias` with the modifications:
   
   - `norminette`: Simplified output by replacing "Error!" with "OK!" and removing error details.
   - `alias`: Displays all aliases except those starting with "alias" or "norminette."

---

This guide helps you transform the `norminette` output and customize your alias list for a more streamlined workflow.