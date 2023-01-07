# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: izail < izail@student.1337.ma >            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/17 15:35:47 by izail             #+#    #+#              #
#    Updated: 2023/01/05 05:58:19 by izail            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

names=nginx mariadb wordpress redis adminer cadvisor website
volumes=srcs_my_database srcs_my_wordpress
path=/home/izail
all:
	mkdir -p ${path}/data/
	mkdir -p ${path}/data/my_database/
	mkdir -p ${path}/data/my_wordpress/
	docker-compose -f ./srcs/docker-compose.yml up  --build
down:
	docker-compose -f ./srcs/docker-compose.yml down
clean: down
	docker volume rm ${volumes}
	echo "1234" | sudo -S rm -rf ${path}/data
fclean:
	docker rmi ${names}
	docker system prune --all -f
rmv:
	echo "1234" | sudo -S rm -rf ${path}/data
	docker volume rm ${volumes}