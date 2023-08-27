
# Docker use context
docker context use docker-context

# Setup a virtual machine, install docker with script in this link: https://github.com/kumcp/aws-learning-example/blob/main/EC2-bootstrap/ubuntu20-docker.sh

docker context create docker-remote --docker "host=ssh://ubuntu@13.215.205.188"

#  Before context an be used, please make sure you have created an ssh key in your machine. By running:
ssh-keygen

# Aftera public key and private key has been generated, use content insidee public key: id_rsa.pub
# and copy to the ~/.ssh/authorized_keys

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCYpaL7ea5mS8ZOJ0tzqq7Pfszee+2brM8Sbw+Wx90DDcXV+bMWWEdzBBYNJf52rJ0b0yzAkruohQ38gMuUqeVrUUMr34M68kuJm5npJoApYljux55+L9JeCl0COKAn6IyAg9W8ZjOS802jX9JOcV3AXzl8i8/jXHaNuaw2uCXUbe/dpW48W+2BBJ8t8pLRXtHR6EYc+5zPlfuiISNIpvfcQx8GGPFxqPeWGhx65ejnNzDmpwJ8+nbFE9vYBsOF6dkvkPRDc0tjMaCV3QttBAlQ44PRD6sf6yd4iw558Sx78yaV99b2M5RlHMnSjdopyXfFxulEQk2cLjq6sGy4oSVSoXfbfNKNT8dseitxfJWsGBbFqlDU6yTUYy3msGXmfPuuBoT1AYo76qPqR+Nd/FreIif62NXVHF9JEU62RqplpLeNiheb5o/w8i8A4pGbrFLFkOfmfl5yLg3g9cjknRp48IDs60tskMiAs2LUM4ZUylx7ePf8HZtPamtbP+F6QDE= kum@Jolly

