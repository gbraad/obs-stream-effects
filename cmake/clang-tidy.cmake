# Detecting and enabling clang-tidy
#
# Sets
# 	CLANG_TIDY_FOUND
#	CLANG_TIDY_BIN

function(find_clang_tidy)
	find_program(CLANG_TIDY_BIN
		NAMES
			clang-tidy
			clang-tidy.exe
		PATHS
			/usr/local/opt/llvm/bin
			/usr/local/opt/bin
			/usr/local/bin
			/opt/llvm/bin
			/opt/bin
			/bin
			${LLVM_PATH}
			${LLVM_PATH}/bin
	)
	if(CLANG_TIDY_BIN)
		set(CLANG_TIDY_FOUND TRUE PARENT_SCOPE)
		set(CLANG_TIDY_BIN ${CLANG_TIDY_BIN} PARENT_SCOPE)		
	else()
		set(CLANG_TIDY_FOUND FALSE PARENT_SCOPE)
	endif()
endfunction()

find_clang_tidy()
