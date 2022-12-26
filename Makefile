# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: izail <izail@student.1337.ma>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/17 15:35:47 by izail             #+#    #+#              #
#    Updated: 2022/12/26 18:28:09 by izail            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

names=nginx mariadb wordpress redis
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
	docker rmi ${names}
	docker volume rm ${volumes}
	rm -rf ${path}/data
fclean:
	docker system prune --all -f
rmv:
	docker volume rm ${volumes}
	rm -rf ${path}/data