resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  tags = { Name = var.vpc_name }
}

resource "aws_subnet" "public" {
  count = length(var.public_subnets)

  vpc_id            = aws_vpc.this.id
  cidr_block        = var.public_subnets[count.index]
  availability_zone = "${var.aws_region}${count.index == 0 ? "a" : "b"}"
  tags              = { Name = "${var.vpc_name}-public-${count.index}" }
}

# (Adicione NAT Gateway, Private Subnets, etc. conforme necessário)