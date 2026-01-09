#/bin/bash

read -r -p "Enter the first number: " a
read -r -p "Enter the second number: " b

echo -e "\n=================Starting arithmetic operation================="
echo -e "\n"

add=$((a+b))
echo "The addition of a and b is" ${add}

echo -e "\n--------------------------------------------------------------------"
echo -e "\n"

sub=$((a-b))
echo "The difference of a and b is" ${sub}

echo -e "\n--------------------------------------------------------------------"
echo -e "\n"

mul=$((a*b))
echo "The product of a and b is" ${mul}

echo -e "\n--------------------------------------------------------------------"
echo -e "\n"

div=$((a/b))
echo "The divison of a and b is" ${div}

echo -e "\n--------------------------------------------------------------------"
echo -e "\n"

mod=$((a%b))
echo "The modulus of a and b is" ${mod}

echo -e "\n--------------------------------------------------------------------"
echo -e "\n"

((++a))
echo "Increment operator when applied on $a results into a :" "${a}"

echo -e "\n--------------------------------------------------------------------"
echo -e "\n"

((--b))
echo "Decrement operator when applied on 'b' results into b :" "${b}"
echo -e "\n"