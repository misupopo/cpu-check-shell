
# shell から cpu type を取得してディレクトリを作成する
create-directory-with-cpu-type:
	mkdir -p builds/$(shell bash checkCpuType.sh)

