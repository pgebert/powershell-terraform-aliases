# Terraform aliases for PowerShell
[![license](https://img.shields.io/github/license/pgebert/powershell-terraform-aliases.svg?style=flat-square)](./LICENSE)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/v/terraform-aliases.svg?style=flat-square)](https://www.powershellgallery.com/packages/terraform-aliases/)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/dt/terraform-aliases.svg?style=flat-square)](https://www.powershellgallery.com/packages/terraform-aliases/)

A [PowerShell](https://microsoft.com/powershell) module that provides partial **[Terraform](https://www.terraform.io/)** aliases from [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)'s [terraform plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/terraform).

> ℹ️ This module will replace some built-in PowerShell aliases with our Terraform aliases to **prevent** conflicts.

## 💻 Prerequisite

✔ Installed [terraform-cli](https://developer.hashicorp.com/terraform/install)


## ⚙️ Installation

Install from [PowerShell Gallery](https://www.powershellgallery.com/packages/terraform-aliases/) using the following powershell command:

```powershell
Install-Module terraform-aliases -Scope CurrentUser -AllowClobber
```

Add below command into your `PowerShell profile` file:

```powershell
Import-Module terraform-aliases -DisableNameChecking
```

Restart your powershell and now you can use terraform aliases. 🚀

## 👉 Additional notes


If you haven't allowed script execution policy, set your script execution policy to `RemoteSigned` or `Unrestricted`.

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

If you don't have PowerShell profile yet, create it with below command!

```powershell
New-Item -ItemType File $profile
```

## 🚀 Supported Aliases

The following aliases are currently implemented:

| Alias   | Command                           |
|---------|-----------------------------------|
| `tf`    | `terraform`                       |
| `tfa`   | `terraform apply`                 |
| `tfc`   | `terraform console`               |
| `tfd`   | `terraform destroy`               |
| `tff`   | `terraform fmt`                   |
| `tfg`   | `terraform graph`                 |
| `tfim`  | `terraform import`                |
| `tfi`   | `terraform init`                  |
| `tfo`   | `terraform output`                |
| `tfp`   | `terraform plan`                  |
| `tfpr`  | `terraform providers`             |
| `tfr`   | `terraform refresh`               |
| `tfsh`  | `terraform show`                  |
| `tft`   | `terraform taint`                 |
| `tfut`  | `terraform untaint`               |
| `tfv`   | `terraform validate`              |
| `tfw`   | `terraform workspace`             |
| `tfs`   | `terraform state`                 |
| `tffu`  | `terraform force-unlock`          |
| `tfwst` | `terraform workspace select`      |
| `tfwsw` | `terraform workspace show`        |
| `tfssw` | `terraform state show`            |
| `tfwde` | `terraform workspace delete`      |
| `tfwls` | `terraform workspace list`        |
| `tfsls` | `terraform state list`            |
| `tfwnw` | `terraform workspace new`         |
| `tfsmv` | `terraform state mv`              |
| `tfspl` | `terraform state pull`            |
| `tfsph` | `terraform state push`            |
| `tfsrm` | `terraform state rm`              |
| `tfay`  | `terraform apply -auto-approve`   |
| `tfdy`  | `terraform destroy -auto-approve` |
| `tfinu` | `terraform init -upgrade`         |
| `tfpde` | `terraform plan --destroy`        |

# Miscellaneous

## 🤝 Contributing

Contributions, [issues](https://github.com/pgebert/powershell-terraform-aliases/issues) and feature requests are welcome!

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2023 [pgebert](https://github.com/pgebert).  
This project is licensed under [MIT](https://github.com/pgebert/powershell-terraform-aliases/blob/main/LICENSE).
