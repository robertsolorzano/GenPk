# GenPk ![License](https://img.shields.io/badge/License-MIT-blue.svg) 

## Description
GenPk is a powerful shell script tailored for enhancing data security through streamlined secret management and file handling processes. This script empowers users to generate strong secrets, encrypt and decrypt files, and manage sensitive data with ease, incorporating robust tools like openssl, zenity, and shred into a unified, user-friendly interface.

![preview-image](/assets/preview.png)

## Features 

- Secret Generation: Effortlessly create secure, random secrets in Base64 or hexadecimal formats for encryption keys, tokens, passwords, and more.
- File Encryption: Encrypt files with AES-256-CBC encryption to protect sensitive data from unauthorized access.
- File Decryption: Decrypt your encrypted files to their original, accessible state quickly and securely.
- Random Password Generation: Generate complex, random passwords to strengthen the security of your digital accounts.
- Automatic Secure File Deletion:
    - After encrypting a file, GenPk immediately shreds the original file, ensuring that no sensitive data remains recoverable.
    - Upon decrypting a file, GenPk automatically shreds the encrypted version, maintaining your data's confidentiality.

## Installation

To get started with GenPk, follow these simple steps:

1. `git clone` the repository or download `GenPk.sh` to your local system.
2. Install the necessary dependencies (openssl, zenity, shred) if you haven't already. These tools are essential for GenPk's operations.
3. Change the script's permissions to make it executable:
    ```bash
    chmod +x GenPk.sh
    ```
4. Run the script from your terminal to access its features:
    ```bash
    ./GenPk.sh
    ```

## Create an alias

Open ~/.bashrc or ~/.zshrc:
```bash
vim ~/.bashrc
```

Add the following line to your ~/.bashrc or ~/.bash_profile:
```bash
alias genpk="/path/to/Genpk.sh"
```

Apply changes:
```bash
source ~/.bashrc
```

Run the script:
```bash
genpk
```

## Usage

After launching GenPk, use the arrow keys to navigate through the menu options and select the desired functionality:

1. Base64, 32 bytes: Generates a 32-byte random secret encoded in Base64.
2. Base64, 64 bytes: Generates a 64-byte random secret encoded in Base64.
3. Hex, 32 bytes: Generates a 32-byte random secret in hexadecimal format.
4. Hex, 64 bytes: Generates a 64-byte random secret in hexadecimal format.
5. Generate Random Password: Creates a strong, random password.
6. Encrypt a File: Encrypts a selected file and securely shreds the original file automatically, leaving no trace of the original unencrypted data.
7. Decrypt a File: Decrypts a selected file and securely shreds the encrypted file automatically, ensuring that only the decrypted version remains.

## Dependencies

Ensure the following tools are installed on your system:

- OpenSSL: Utilized for generating secrets, encrypting, and decrypting files.
- Zenity: Provides a graphical interface for file selection and messages.
- Shred: Used for securely deleting files to prevent data recovery.

## Security-Considerations

The automatic shredding feature permanently deletes files from your system. Use caution and ensure you have backups or no longer need the files before proceeding.

## License

This project is licensed under the MIT license. For more information, see [here](https://opensource.org/licenses/MIT).
  
