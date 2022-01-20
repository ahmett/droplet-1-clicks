.PHONY: buld-% update-scripts validate-%

%:
	./scripts/create-1-click.sh $* $*-20-04

build-%:
	packer build $*/template.json

validate-%:
	packer validate $*/template.json

update-scripts:
	curl -o common/scripts/999-img_check.sh https://raw.githubusercontent.com/digitalocean/marketplace-partners/master/scripts/99-img-check.sh
	curl -o common/scripts/900-cleanup.sh https://raw.githubusercontent.com/digitalocean/marketplace-partners/master/scripts/90-cleanup.sh
