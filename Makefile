# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: izail <izail@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/17 15:35:47 by izail             #+#    #+#              #
#    Updated: 2023/01/03 15:56:16 by izail            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

names=nginx mariadb wordpress redis adminer ftp cadvisor
volumes=srcs_my_database srcs_my_wordpress
path=/Users/izail
all:
	mkdir -p ${path}/data/
	mkdir -p ${path}/data/my_database/
	mkdir -p ${path}/data/my_wordpress/
	docker-compose -f ./srcs/docker-compose.yml up  --build
down:
	docker-compose -f ./srcs/docker-compose.yml down
clean: down
	docker volume rm ${volumes}
	rm -rf ${path}/data
fclean:
	docker rmi ${names}
	docker system prune --all -f
rmv:
	docker volume rm ${volumes}
	rm -rf ${path}/data