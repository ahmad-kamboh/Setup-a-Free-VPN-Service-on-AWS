# Step 1: Perform Amazon Linux 2023 Package Update

Connect to your server using AWS CloudShell or SSH:

```bash
sudo dnf update

---

### 3. `step2_install_mariadb.md`

```markdown
# Step 2: Install MariaDB 10.05 on Amazon Linux 2023

MariaDB is available by default on Amazon Linux 2023.

Install MariaDB server:

```bash
sudo dnf install mariadb105-server
