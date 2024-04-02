# GenPk ![License](https://img.shields.io/badge/License-MIT-blue.svg) 

## Description
GenPk is a powerful shell script tailored for enhancing data security through streamlined secret management and file handling processes. This script enables users to generate robust secrets, encrypt and decrypt files, and handle sensitive information, by combining the capabilities of openssl, zenity, and shred. This integration creates a cohesive and intuitive interface for users looking to secure their data effectively.

![preview-image](/assets/preview1.png)

## Key Features

**Secret Generation:** GenPk generates secure, random secrets in Base64 or hexadecimal formats, suitable for encryption keys, tokens, and passwords. Using cryptographic best practices, it ensures each secret is unique and secure against decryption attempts.

**File Encryption:** With AES-256-CBC encryption, GenPk creates a strong defense against unauthorized access. Enhancements include:

- Salt: Incorporates a cryptographic salt in each encryption process, enhancing uniqueness and thwarting precomputed hash (rainbow table) attacks.
- PBKDF2: Employs PBKDF2 for key derivation, significantly increasing security by using a salt and multiple iterations. This effectively counters brute-force attacks by delaying decryption attempts.
- Iterative Processing: The use of a high iteration count makes the key derivation process time-consuming, which deters brute-force attacks due to the computational time required.

**File Decryption:** GenPk allows for the secure decryption of encrypted files to their original state. The process adheres to strict security standards, ensuring data can only be accessed by authorized users.

**Random Password Generation:** Recognizing the importance of strong passwords, GenPk helps users create complex, random passwords. These passwords are designed to resist common cybersecurity threats, enhancing account security.

**Automatic Secure File Deletion:**
- Post-Encryption: Immediately after encrypting a file, GenPk uses the shred command to permanently delete the original file, preventing any possibility of data recovery.
- Post-Decryption: After decrypting a file, GenPk similarly shreds the encrypted file, ensuring that only the decrypted data remains.

<br>

***GenPk emphasizes the importance of modern cryptographic practices. This educative approach aims to deepen users' understanding of data security and promote effective protection strategies.***

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

## Usage

After launching GenPk, use the arrow keys ⬆️⬇️ to navigate through the menu options and select the desired functionality:

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

## Acknowledgments

This project uses the following open-source tools:

- **OpenSSL**: For encryption and decryption functionalities. [Learn more about OpenSSL](https://www.openssl.org/).
- **Zenity**: For creating graphical dialog boxes in scripts. [Learn more about Zenity](https://help.gnome.org/users/zenity/).
- **Shred**: For securely deleting files. Part of the GNU Core Utilities. [Learn more about Shred](https://www.gnu.org/software/coreutils/manual/html_node/shred-invocation.html).

## License

This project is licensed under the MIT license. For more information, see [here](https://opensource.org/licenses/MIT).
  
