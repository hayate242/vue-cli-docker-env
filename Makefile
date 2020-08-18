build:
	docker-compose build

up: build
	docker-compose up -d nginx node db
	make setup
	docker-compose ps
	docker-compose logs -f -t

serve:
	docker-compose run --rm node npm run serve


setup:
	@if [ ! -d "src/node_modules" ]; then\
		docker-compose run --rm node npm install --no-progress;\
	fi

down:
	docker-compose down
	docker-compose ps

clean:
	docker-compose down -v

	@if [ -d "src/node_modules" ]; then\
		docker-compose run --rm utility rm -rf /app/php/node_modules; \
		docker-compose run --rm utility sh -c "rm -rf /app/php/public/js/*"; \
		docker-compose run --rm utility sh -c "rm -rf /app/php/public/css/*"; \
	fi



