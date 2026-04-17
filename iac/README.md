# LAB02_iac
Despliegue

Vamos a utilizar terraform.
Lo primero es habilitar los proveedores, desde la carpeta donde se encuentra terraform
```
cd iac
```
Se encuantra dentro de Lab-iac-jueves

```
terraform init
```

Deben documentar como crear los ambientes y seleccionar los ambientes

terraform.tfvars:
```
web_port={
    localhost = 4001
    dev = 5001
}
api_port={
    localhost = 4002
    dev = 5002
}
```