# Terraform aliases for PowerShell
[![license](https://img.shields.io/github/license/gluons/powershell-git-aliases.svg?style=flat-square)](./LICENSE)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/v/terraform-aliases.svg?style=flat-square)](https://www.powershellgallery.com/packages/terraform-aliases/)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/dt/terraform-aliases.svg?style=flat-square)](https://www.powershellgallery.com/packages/terraform-aliases/)

A [PowerShell](https://microsoft.com/powershell) module that provide partial **[Terraform](https://www.terraform.io/)** aliases from [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)'s [terraform plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/terraform).

> ℹ️ This module will replace some built-in PowerShell aliases with our Terraform aliases to **prevent** conflicts.

## ⚙️ Installation

Install from [PowerShell Gallery](https://www.powershellgallery.com/packages/terraform-aliases/)

```powershell
Install-Module terraform-aliases -Scope CurrentUser -AllowClobber
```

[//]: # (Or from [Scoop]&#40;https://github.com/ScoopInstaller/Extras/blob/master/bucket/terraform-aliases.json&#41;)

[//]: # ()
[//]: # (```powershell)

[//]: # (scoop bucket add extras)

[//]: # (scoop install terraform-aliases)

[//]: # (```)

---

⚠️ If you haven't allowed script execution policy, set your script execution policy to `RemoteSigned` or `Unrestricted`.

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## 🛂 Usage

You have to import the module to use `terraform-aliases`.

Add below command into your PowerShell profile.

```powershell
Import-Module terraform-aliases -DisableNameChecking
```

Then restart your PowerShell.  
Now you can use terraform aliases.

---

⚠️ If you don't have PowerShell profile yet, create it with below command!

```powershell
New-Item -ItemType File $profile
```

## 🚀 Supported Aliases

| Alias | Command              |
| ----- | -------------------- |
| `tf`  | `terraform`          |
| `tfa` | `terraform apply`    |
| `tfc` | `terraform console`  |
| `tfd` | `terraform destroy`  |
| `tff` | `terraform fmt`      |
| `tfi` | `terraform init`     |
| `tfo` | `terraform output`   |
| `tfp` | `terraform plan`     |
| `tfv` | `terraform validate` |
