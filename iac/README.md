# LAB02_iac
Despliegu
Vamos a utilizar terraform.
Para instalar empezamos por las dependecias
```
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```
```
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
```
```
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com/ $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
```
Actializamos
```
sudo apt updatesudo apt update 
```
Finalmente instalamos
```
sudo apt-get install terraform
```

Proveedores, desde la carpeta donde se encuentra terraform

```
cd iac
```
Se encuantra dentro de Lab-iac-jueves

```
terraform init
```
https://curly-barnacle-g4ppvvvqrgrrf9gpw-4001.app.github.dev/
...

Deben documentar como crear los ambientes y seleccionar los ambientes
api.tf:
```
resource "docker_container" "backend" {
  name  = "api01"
  image = docker_image.api.image_id

  ports {
    internal = 3000
    external = 4002
  }
}
```

terraform.tfvars: Para api y para la web
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

Se agrega 