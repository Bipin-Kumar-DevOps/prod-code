module "mrg" {
  source = "../../Module/1RG"
  rg     = var.mrg
}
module "mvnet" {
  depends_on = [module.m-rg]
  source     = "../../Module/2Vnet"
  vnet       = var.mvnet
}
module "msubnet" {
  depends_on = [module.m-vnet]
  source     = "../../Module/3Subnet"
  subnet     = var.msnet
}

module "mnsg" {
  depends_on = [module.m-subnet]
  source     = "../../Module/4NSG"
  nsg        = var.mnsg
  sec-rule   = var.msr
}
module "mnic" {
  depends_on = [module.m-subnet]
  source     = "../../Module/5NIC"
  nic        = var.mnic
}
module "mnsg-ac" {
  depends_on = [module.m-nsg]
  source     = "../../Module/6NSG-Ass"
  nsg-ass    = var.mnsg-ac
}

module "mvm" {
  depends_on = [module.m-rg, module.m-vnet]
  source     = "../../Module/7VM"
  vm         = var.mvm
}
module "mstg" {
  depends_on = [module.m-rg]
  source     = "../../Module/8SA"
  stg        = var.mstg
}
module "mca" {
  depends_on = [module.m-stg]
  source     = "../../Module/9CA"
  ca         = var.mca
}
