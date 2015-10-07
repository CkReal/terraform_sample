#####################################
# RDS Settings
#####################################
resource "aws_db_subnet_group" "default" {
    name = "${var.app_name}-RDS-subnet"
    description = "${var.app_name} MultiAZ"
    subnet_ids = ["${aws_subnet.vpc_main-private-subnet1.id}", "${aws_subnet.vpc_main-private-subnet2.id}"]
}
