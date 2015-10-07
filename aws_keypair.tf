#####################################
# KeyPair Settings
#####################################
resource "aws_key_pair" "sshkey" {
  key_name = "sample-key"
  public_key = "${var.my_public_key}"
}
