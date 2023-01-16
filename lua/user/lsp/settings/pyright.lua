return {
	settings = {

		Python= {
    linting={enabled= true,

    pyrightEnabled =false,

    pylintEnabled= true,

    pylintArgs = {"--rcfile",
        "/home/amit/.pylintrc"}
  },
			analysis = {
      autoSearchPaths = true,
      diagnosticMode = "workspace",
      useLibraryCodeForTypes = true,
      typeCheckingMode = "off",
      diagnosticSeverityOverrides = false
      


    }
  }
		}
	}
