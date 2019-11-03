# Digital Ocean Kubernetes Bootstrap

This repository contains the Kubernetes boilerplate code that I use to host my own applications such as https://mccallister.dev, https://mccallister.io and some other personal applications.

## Requirements

- `doctl`
- `kubectl`

## Batteries Included

This project is designed to be plug and play. Running through this setup will provide the following:

- Digital Ocean Managed Database (defaults to PostgreSQL)
- Digital Ocean Managed Kubernetes Cluster
- Digital Ocean Load Balancer
- Traefik

This will allow you to host multiple applications in a single Kubernetes cluster. The default setup will cost ~$55 per month. Choosing a larger database and adding more nodes to your Kubernetes cluster will incur more costs.

## Getting Started

In an effort to save time, this project aims to be as hands off as possible. In fact, once you have cloned the repository and changed the defaults in the Makefile, all you have to run is `make setup` and let the tool do the rest for you!

## Roadmap

- [x] Creating a Managed DO Kubernetes Cluster
- [x] Creating a Managed DO Database
- [x] Installing Advanced Metrics on the Kuberenetes Cluster
- [ ] Provide example project for Craft
- [ ] Provide example project for Laravel
- [ ] Provide example project for Yii
- [ ] Provide example project for Go
- [ ] Provide example project for Hasura GraphQL

## Security

If you discover any security related issues, please email themccallister@gmail.com instead of using the issue tracker.

## Credits

- [Jason McCallister](https://github.com/jasonmccallister)
- [All Contributors](../../contributors)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
