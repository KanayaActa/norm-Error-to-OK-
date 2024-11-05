### `norminette` Output Simplification Guide

This guide explains how to modify the output of `norminette` by replacing "Error!" with "OK!" and removing detailed error lines. Additionally, it customizes the `alias` command to exclude specific entries.

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

#### Steps to Implement Custom Functions:

1. **Open Your Shell Configuration File**  
   Depending on your shell, open the appropriate configuration file:
   - **bash**: `~/.bashrc`
   - **zsh**: `~/.zshrc`

2. **Add the Custom Functions and Aliases**  
   Append the following lines to your configuration file:

   ```bash
   norminette_custom() {
       command norminette "$@" | sed -e 's/Error!/OK!/' -e '/^Error:/d'
   }

   alias_custom() {
       command alias "$@" | sed -e '/custom/d' -e '/norminette/d'
   }

   alias norminette='norminette_custom'
   alias alias='alias_custom'
   ```

3. **Apply the Changes**  
   Save the file and apply the changes by running:

   ```bash
   source ~/.bashrc  # For bash
   source ~/.zshrc   # For zsh
   ```

4. **Usage**  
   Now you can use the custom commands:

   - **`norminette`**: Simplifies the output by replacing "Error!" with "OK!" and removing detailed error messages.
   - **`alias`**: Displays all aliases except those containing "custom" or "norminette."

---

### Summary

By following this guide, you can:
- Customize the `norminette` output to be more concise and readable.
- Modify the `alias` command to filter out specific entries.

This setup streamlines your workflow and helps focus on essential information while maintaining a cleaner alias list.

Use at your own risk!
