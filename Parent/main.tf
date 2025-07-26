module "RG" {
  source = "../Child/Rg"
}
module "Vnet" {
  source     = "../Child/Vnet"
  depends_on = [module.RG]
}
module "Subnet" {
  source     = "../Child/Subnet"
  depends_on = [module.Vnet]

}
module "Publicip" {
  source     = "../child/Publicip"
  depends_on = [module.RG]
}
module "VM" {
  source     = "../Child/VM"
  depends_on = [module.Publicip, module.Subnet]
}
