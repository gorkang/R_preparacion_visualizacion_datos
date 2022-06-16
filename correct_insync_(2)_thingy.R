# Busca archivos y carpetas con "(  2)" y los renombra quitando el " (2)" ---------------------

  problematic_files = list.files(full.names = TRUE, recursive = TRUE, pattern = " \\(2\\)", include.dirs = TRUE, all.files = TRUE) #path = "/home/emrys/gorkang@gmail.com/RESEARCH/PROYECTOS-Code"
  correct_names = gsub(" \\(2\\)", "", problematic_files)

  potential_conflicts = list.files(full.names = TRUE, recursive = TRUE, pattern = paste(basename(correct_names), collapse = "|"), include.dirs = TRUE, all.files = TRUE)
  actual_conflicts = correct_names[correct_names %in% potential_conflicts]


  if (length(problematic_files) == 0) { message("NOTHING TO SEE HERE"); stop()}

  # ASK QUESTION
  message("The following files will be renamed: \n  * ", paste(problematic_files, collapse = "\n  * "), "\n\n TO: \n  * ",  paste(correct_names, collapse = "\n  * "),  "\n\n DO YOU WANT TO PROCEED? (YES/no)"); response_proceed = readLines(n=1)


  # Si hay conflictos (existen archivos con el nombre de destino), pregunta
    if (response_proceed != "no" & length(actual_conflicts > 0 )) {
      # ASK QUESTION
      message("The following files ALREADY EXIST: \n  * ", paste(actual_conflicts, collapse = "\n  * "),  "\n\n ARE YOU SURE DO YOU WANT TO PROCEED OVERWRITTING THE FILES? (yes/NO)"); response_conflict = readLines(n=1)
    } else {
      # Si no hay conflictos, continuamos
      response_conflict = "yes"
    }


  ### MAYBE USE THIS??? OR NOT??? TO RENAME FOLDER (MORE GENERAL)
    # IF THIS DOEST WORK, USE a SHELL COMMAND THAT WORKS
    # shell(paste('rename',
    #             sprintf("content/%s-content", pu_name),
    #             sprintf("content/%s", other_name))


# Ejecutamos ----------------------------------------------------------------------------------

  # Si la respuesta a conflictos es yes, o no existen conflictos
  if (response_conflict == "yes") {

      if (response_proceed == "no") {
          message("No harm done")
      } else {
          # response_conflict == yes & response_proceed == yes
          file.rename(problematic_files, correct_names)
          message("DONE!")
      }

  } else {
      # response_conflict == no | omision
      message("You are wiser than I expected...")
  }
