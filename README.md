# Karazhan

---

>*"Karazhan is an abandoned ancient tower located in Deadwind Pass. Karazhan is notable for its famous occupant, the last Guardian of Tirisfal, Medivh."* [WoW Head](https://www.wowhead.com/karazhan)

---

This is a reference for future projects on how to set up your iOS project. Like a library that contains many books to guide you in a specific subject.

---
## 📋 Requirements

This project requires [Homebrew](https://brew.sh/) to be installed on your machine in order to execute some **Makefile** commands. 
To install Homebrew, open a new `Terminal` window. Type the above command and press enter to install it.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### ● Configure your Git username/email

1. Open `Terminal`.
2. Set your username:

```
git config --global user.name "Your Name"
```

3. Set your email address:

```
git config --global user.email you@example.com
```

---
## 🔒 Authentication

>*"The Secure Shell Protocol (SSH) is a cryptographic network protocol for operating network services securely over an unsecured network. Its most notable applications are remote login and command-line execution."* [Secure Shell on Wikipedia](https://en.wikipedia.org/wiki/Secure_Shell)

You can access and write data in repositories on GitHub.com using SSH (Secure Shell Protocol). When you connect via SSH, you authenticate using a private key file on your local machine.

For more information about Connect with SSH, see [Authentication / Connect with SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/about-ssh) on GitHub Docs.

#### ● Generate a new SSH key

1. Open `Terminal`.
2. Paste the text below, replacing the email used in the example with your GitHub email address.

```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

For more information about it, see [Generate a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key) on GitHub Docs.

#### ● Adding your SSH key to the ssh-agent

1. Open `Terminal`.
2. Start the ssh-agent in the background.

```
eval "$(ssh-agent -s)"
```

3. Modify your `~/.ssh/config` file to automatically load keys into the ssh-agent and store passphrases in your keychain.
    3.1. If the file doesn't exist, create the file.
    ```
    touch ~/.ssh/config
    ```

    3.2. Open your `~/.ssh/config` file.
    ```
    open ~/.ssh/config
    ```

    3.3. Modify the file to contain the following lines.
    ```
    Host github.com
      AddKeysToAgent yes
      UseKeychain yes
      IdentityFile ~/.ssh/id_ed25519
    ```

4. Add your SSH private key to the ssh-agent and store your passphrase in the keychain.

```
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

For more information about it, see [Adding your SSH key to the ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent) on GitHub Docs.

#### ● Adding a new SSH key to your account

1. OOpen `Terminal`.
2. Copy the SSH public key to your clipboard.

```
pbcopy < ~/.ssh/id_ed25519.pub
```

3. In the upper-right corner of any page on GitHub, click your profile photo, then click ***Settings***.
4. In the "Access" section of the sidebar, click ***SSH and GPG keys***.
5. Click ***New SSH key***.
6. In the "Title" field, add a descriptive label for the new key.
7. In the "Key" field, paste your public key.
8. Click ***Add SSH key***.

For more information about it, see [Adding a new SSH key to your account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-ssh-key-to-your-account) on GitHub Docs.

---
## ⚙️ Setup

After cloning it, on the project directory run the setup command using the terminal:

```
make setup
```

***Work in progress...***

---
## 🧰 Optional Setup

⚠️ **The following setup is completely optional.** ⚠️
Please use only one of these setups if any or all of them make sense to you as you develop.

- **[Oh My ZSH](https://ohmyz.sh/)** is an open source, community-driven framework for managing your ZSH configuration.
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- **[XOPEN](https://github.com/paulomendes/xopen)** is a short and useful script to open your Xcode projects from your terminal window.
```
curl -L https://raw.github.com/paulomendes/xopen/master/install.sh | sh
```

---