. $PSScriptRoot\utils.ps1

# Prevent conflict with built-in aliases
Remove-Alias tf -Force -ErrorAction SilentlyContinue
Remove-Alias tfa -Force -ErrorAction SilentlyContinue
Remove-Alias tfc -Force -ErrorAction SilentlyContinue
Remove-Alias tfd -Force -ErrorAction SilentlyContinue
Remove-Alias tff -Force -ErrorAction SilentlyContinue
Remove-Alias tfi -Force -ErrorAction SilentlyContinue
Remove-Alias tfo -Force -ErrorAction SilentlyContinue
Remove-Alias tfp -Force -ErrorAction SilentlyContinue
Remove-Alias tfv -Force -ErrorAction SilentlyContinue

function tf {
	terraform $args
}

function tfa {
	terraform apply $args
}
function tfc {
	terraform console $args
}

function tfd {
	terraform destroy $args
}

function tff {
	terraform fmt $args
}

function tfi {
	terraform init $args
}

function tfo {
	terraform output $args
}

function tfp {
	terraform plan $args
}

function tfv {
	terraform validate $args
}
