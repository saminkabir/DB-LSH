
    if(EXISTS "/data/kabir/similarity-search/models/DB-LSH2/DB-LSH/dbLSH/build/CMakeCache.txt")
        file(REMOVE "/data/kabir/similarity-search/models/DB-LSH2/DB-LSH/dbLSH/build/CMakeCache.txt")
    endif()
    if(EXISTS "/data/kabir/similarity-search/models/DB-LSH2/DB-LSH/dbLSH/build/Makefile")
        execute_process(COMMAND make clean WORKING_DIRECTORY "/data/kabir/similarity-search/models/DB-LSH2/DB-LSH/dbLSH/build")
    endif()
