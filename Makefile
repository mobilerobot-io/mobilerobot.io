build:
	rm -rf public
	hugo

serve:
	rm -rf public
	hugo serve --watch --disableFastRender --renderToDisk

clean:
	rm -rf public docs *~
