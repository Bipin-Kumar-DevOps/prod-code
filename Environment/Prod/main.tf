module "mrg" {
  source = "../../Module/1RG"
  rg     = var.m_rg
}
# module "mvnet" {
#   depends_on = [module.mrg]
#   source     = "../../Module/2Vnet"
#   vnet       = var.mvnet
# }
# module "msubnet" {
#   depends_on = [module.mvnet]
#   source     = "../../Module/3Subnet"
#   subnet     = var.msnet
# }

# module "mnsg" {
#   depends_on = [module.msubnet]
#   source     = "../../Module/4NSG"
#   nsg        = var.mnsg
#   sec-rule   = var.msr
# }
# module "mnic" {
#   depends_on = [module.msubnet]
#   source     = "../../Module/5NIC"
#   nic        = var.mnic
# }
# module "mnsg-ac" {
#   depends_on = [module.mnsg]
#   source     = "../../Module/6NSG-Ac"
#   nsg-ass    = var.mnsg-ac
# }

# module "mvm" {
#   depends_on = [module.mrg, module.mvnet]
#   source     = "../../Module/7VM"
#   vm         = var.mvm
# }
# module "mstg" {
#   depends_on = [module.mrg]
#   source     = "../../Module/8SA"
#   stg        = var.mstg
# }
# # module "mca" {
# #   depends_on = [module.mstg]
# #   source     = "../../Module/9CA"
# #   ca         = var.mca
# # }
