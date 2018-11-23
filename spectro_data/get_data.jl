download("https://www.ismrm.org/workshops/Spectroscopy16/mrs_fitting_challenge/datasets_text.zip", "datasets_text.zip")
download("https://www.ismrm.org/workshops/Spectroscopy16/mrs_fitting_challenge/basisset_text.zip", "basisset_text.zip")
download("https://www.ismrm.org/workshops/Spectroscopy16/mrs_fitting_challenge/basisset_text_noTMS_20160929.zip", "basisset_text_noTMS_20160929.zip")

run(`unzip -d datasets_text                 datasets_text.zip`)
run(`unzip -d basisset_text                 basisset_text.zip`)
run(`unzip -d basisset_text_noTMS_20160929  basisset_text_noTMS_20160929.zip`)

