. $PSScriptRoot\utils.ps1

# Prevent conflict with built-in aliases
Remove-Alias tf -Force -ErrorAction SilentlyContinue
Remove-Alias tfa -Force -ErrorAction SilentlyContinue
Remove-Alias tfc -Force -ErrorAction SilentlyContinue
Remove-Alias tfd -Force -ErrorAction SilentlyContinue
Remove-Alias tff -Force -ErrorAction SilentlyContinue
Remove-Alias tfg -Force -ErrorAction SilentlyContinue
Remove-Alias tfim -Force -ErrorAction SilentlyContinue
Remove-Alias tfi -Force -ErrorAction SilentlyContinue
Remove-Alias tfo -Force -ErrorAction SilentlyContinue
Remove-Alias tfp -Force -ErrorAction SilentlyContinue
Remove-Alias tfpr -Force -ErrorAction SilentlyContinue
Remove-Alias tfr -Force -ErrorAction SilentlyContinue
Remove-Alias tfsh -Force -ErrorAction SilentlyContinue
Remove-Alias tft -Force -ErrorAction SilentlyContinue
Remove-Alias tfut -Force -ErrorAction SilentlyContinue
Remove-Alias tfv -Force -ErrorAction SilentlyContinue
Remove-Alias tfw -Force -ErrorAction SilentlyContinue
Remove-Alias tfwl -Force -ErrorAction SilentlyContinue
Remove-Alias tfws -Force -ErrorAction SilentlyContinue
Remove-Alias tfs -Force -ErrorAction SilentlyContinue
Remove-Alias tffu -Force -ErrorAction SilentlyContinue
Remove-Alias tfwst -Force -ErrorAction SilentlyContinue
Remove-Alias tfwsw -Force -ErrorAction SilentlyContinue
Remove-Alias tfssw -Force -ErrorAction SilentlyContinue
Remove-Alias tfwde -Force -ErrorAction SilentlyContinue
Remove-Alias tfwls -Force -ErrorAction SilentlyContinue
Remove-Alias tfsls -Force -ErrorAction SilentlyContinue
Remove-Alias tfwnw -Force -ErrorAction SilentlyContinue
Remove-Alias tfsmv -Force -ErrorAction SilentlyContinue
Remove-Alias tfspl -Force -ErrorAction SilentlyContinue
Remove-Alias tfsph -Force -ErrorAction SilentlyContinue
Remove-Alias tfsrm -Force -ErrorAction SilentlyContinue
Remove-Alias tfay -Force -ErrorAction SilentlyContinue
Remove-Alias tfdy -Force -ErrorAction SilentlyContinue
Remove-Alias tfinu -Force -ErrorAction SilentlyContinue
Remove-Alias tfpde -Force -ErrorAction SilentlyContinue

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

function tfg {
	terraform graph $args
}

function tfim {
	terraform import $args
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

function tfpr {
	terraform providers $args
}

function tfr {
	terraform providers $args
}

function tfsh {
	terraform show $args
}

function tft {
	terraform taint $args
}

function tfut {
	terraform untaint $args
}

function tfv {
	terraform validate $args
}

function tfw {
	terraform workspace $args
}

function tfs {
	terraform state $args
}

function tffu {
	terraform force-unlock $args
}

function tfwst {
	terraform workspace select $args
}

function tfwsw {
	terraform workspace show $args
}

function tfssw {
	terraform state show $args
}

function tfwde {
	terraform workspace delete $args
}

function tfwls {
	terraform workspace list $args
}

function tfsls {
	terraform state list $args
}

function tfwnw {
	terraform workspace new $args
}

function tfsmv {
	terraform state mv $args
}

function tfspl {
	terraform state pull $args
}

function tfsph {
	terraform state push $args
}

function tfsrm {
	terraform state rm $args
}

function tfay {
	terraform apply -auto-approve $args
}

function tfdy {
	terraform destroy -auto-approve $args
}

function tfinu {
	terraform init -upgrade $args
}

function tfpde {
	terraform plan --destroy $args
}
