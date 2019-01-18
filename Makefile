build:
	rm -rf public
	hugo

serve:
	rm -rf public
	hugo serve -D --watch --disableFastRender --renderToDisk

clean:
	rm -rf public docs *~
