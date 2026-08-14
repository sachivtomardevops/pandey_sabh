module "sigma" {
  source = "../child/resource"
  kaka   = var.kaka

}

module "vnet" {
  source     = "../child/vnet"
  kantivnet  = var.kantivnet
  depends_on = [module.sigma]
}

module "subnet" {
  source      = "../child/subnet"
  kantisubnet = var.kantisubnet
  depends_on  = [module.vnet]
}

module "pip" {
  source     = "../child/PIP"
  kantipip   = var.kantipip
  depends_on = [module.subnet]
}

module "nic" {
  source = "../child/NIC"

  kantinic   = var.kantinic
  depends_on = [module.pip]
}


