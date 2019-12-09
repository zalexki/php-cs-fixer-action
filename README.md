This action allows you to run php cs fixer on a project that may not be compatible with it (php version/composer deps ... or other problems).

This action will use your .php_cs.dist file at the root of your project.  
Default command is `'--dry-run --diff --using-cache=no --diff-format udiff'`  

You can replace this with the other-cmds param :  
```
      - name: php-cs-fixer default
        uses: zalexki/php-cs-fixer-action@master
        with:
            other-cmds: '--dry-run --diff --config=/another/config/file'
```

TODO:  
- Fix default cs config
- Support other php cs fixer versions
