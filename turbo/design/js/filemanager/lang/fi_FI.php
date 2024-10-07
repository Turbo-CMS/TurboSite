<?php

return [

    'Select' => 'Valitse',
    'Deselect_All' => 'Poista kaikki valinnat',
    'Select_All' => 'Valitse kaikki',
    'Erase' => 'Poista',
    'Open' => 'Avaa',
    'Confirm_del' => 'Oletko varma, että haluat poistaa?',
    'All' => 'Kaikki',
    'Files' => 'Tiedostot',
    'Images' => 'Kuvat',
    'Archives' => 'Arkistot',
    'Error_Upload' => 'Lähetetyn kuvan koko ylittää kokorajoituksen.',
    'Error_extension' => 'Tiedostopääte ei ole sallittu.',
    'Upload_file' => 'Lähetä',
    'Filters' => 'Suotimet',
    'Videos' => 'Videot',
    'Music' => 'Musiikki',
    'New_Folder' => 'Uusi kansio',
    'Folder_Created' => 'Hakemisto luotu onnistuneesti',
    'Existing_Folder' => 'Olemassaoleva hakemisto',
    'Confirm_Folder_del' => 'Oletko varma, että haluat poistaa hakemiston ja kaikki siinä olevat sisällöt?',
    'Return_Files_List' => 'Palaa tiedostolistaan',
    'Preview' => 'Esikatselu',
    'Download' => 'Lataa',
    'Insert_Folder_Name' => 'Syötä hakemiston nimi:',
    'Root' => 'juuri',
    'Rename' => 'Uudelleennimeä',
    'Back' => 'takaisin',
    'View' => 'Näkymä',
    'View_list' => 'Listanäkymä',
    'View_columns_list' => 'Sarakelistanäkymä',
    'View_boxes' => 'Laatikkonäkymä',
    'Toolbar' => 'Työkalupalkki',
    'Actions' => 'Toiminnot',
    'Rename_existing_file' => 'Tiedosto on jo olemassa',
    'Rename_existing_folder' => 'Hakemisto on jo olemassa',
    'Empty_name' => 'Nimi on tyhjä',
    'Text_filter' => 'tekstisuodin',
    'Swipe_help' => 'Pyyhkäise tiedoston/hakemiston nimeä nähdäksesi valinnat',
    'Upload_base' => 'Peruslähetys', 
    'Upload_base_help' => "Raahaa ja pudota tiedostoja (modernit selaimet) tai klikkaa Lisää tiedosto(ja) ja Aloita lähetys. Kun lähetys on valmis, klikkaa 'Palaa tiedostolistaan' -painiketta.",
    'Upload_add_files' => 'Lisää tiedosto(ja)',
    'Upload_start' => 'Aloita lähetys',
    'Upload_error_messages' => [
        1 => 'Lähetetty tiedosto ylittää upload_max_filesize-direktiivin php.ini:ssä',
        2 => 'Lähetetty tiedosto ylittää MAX_FILE_SIZE-direktiivin, joka määriteltiin HTML-lomakkeessa',
        3 => 'Tiedoston lähettäminen onnistui vain osittain',
        4 => 'Tiedostoja ei lähetetty',
        6 => 'Väliaikainen hakemisto puuttuu',
        7 => 'Levylle kirjoittaminen epäonnistui',
        8 => 'PHP-lisäosa pysäytti tiedoston lähettämisen',
        'post_max_size' => 'Lähetetty tiedosto ylittää post_max_size-direktiivin php.ini:ssä',
        'max_file_size' => 'Tiedosto on liian suuri',
        'min_file_size' => 'Tiedosto on liian pieni',
        'accept_file_types' => 'Tiedostotyyppi ei sallittu',
        'max_number_of_files' => 'Suurin sallittu tiedostojen määrä ylitetty',
        'max_width' => 'Kuva ylittää suurimman mahdollisen leveyden', 
        'min_width' => 'Kuva vaatii minimileveyden',
        'max_height' => 'Kuva ylittää suurimman mahdollisen korkeuden',
        'min_height' => 'Kuva vaatii minimikorkeuden',
        'abort' => 'Tiedoston lähettäminen keskeytetty',
        'image_resize' => 'Kuvan koon muuttaminen epäonnistui'
    ],
    'Upload_url' => 'URL:sta',
    'Type_dir' => 'hakemisto',
    'Type' => 'Tyyppi',
    'Dimension' => 'Koko',
    'Size' => 'Koko',
    'Date' => 'Päivämäärä',
    'Filename' => 'Tiedostonimi',
    'Operations' => 'Toiminnot',
    'Date_type' => 'd-m-y',
    'OK' => 'OK',
    'Cancel' => 'Peruuta',
    'Sorting' => 'lajittelu',
    'Show_url' => 'Näytä URL',
    'Extract' => 'Pura tänne',
    'File_info' => 'Tiedostoinfo',
    'Edit_image' => 'Muokkaa kuvaa',
    'Duplicate' => 'Duplikaatti',
    'Folders' => 'Hakemistot',
    'Copy' => 'Kopioi',
    'Cut' => 'Leikkaa',
    'Paste' => 'Liitä',
    'CB' => 'LP', // clipboard
    'Paste_Here' => 'Liitä tähän hakemistoon',
    'Paste_Confirm' => 'Oletko varma, että haluat liittää tähän hakemistoon? Tämä ylikirjoittaa mahdollisesti löytyvät tiedostot/hakemistot',
    'Paste_Failed' => 'Tiedostojen liittäminen epäonnistui',
    'Clear_Clipboard' => 'Tyhjennä leikepöytä',
    'Clear_Clipboard_Confirm' => 'Oletko varma, että haluat tyhjentää leikepöydän?',
    'Files_ON_Clipboard' => 'Leikepöydällä on tiedostoja.',
    'Copy_Cut_Size_Limit' => 'Valitut tiedostot/hakemistot ovat liian suuria %1$s. Rajoitus: %2$d MB/toimenpide', // %1$s = cut or copy, %2$d = max size
    'Copy_Cut_Count_Limit' => 'Valitsit liian monta tiedostoa/hakemistoa %1$s. Rajoitus: %2$d tiedostoa/toimenpide', // %1$s = cut or copy, %2$d = max count
    'Copy_Cut_Not_Allowed' => 'Sinulla ei ole oikeutta %1$s %2$s.', // %12$s = cut or copy, %2$s = files or folders
    'Image_Editor_No_Save' => 'Kuvaa ei voitu tallentaa',
    'Image_Editor_Exit' => "Poistu",
    'Image_Editor_Save' => "Tallenna",
    'Zip_No_Extract' => 'Ei voitu purkaa. Tiedosto voi olla korruptoitunut.',
    'Zip_Invalid' => 'Tämä tiedostopääte ei ole tuettu. Hyväksyttyjä: zip, gz, tar.',
    'Dir_No_Write' => 'Valitsemaasi hakemistoon ei voida kirjoittaa.', 
    'Function_Disabled' => '%s-toiminto palvelimella on kytketty pois päältä.', // %s = cut or copy
    'File_Permission' => 'Tiedoston oikeus',
    'File_Permission_Not_Allowed' => '%s oikeuksien muuttaminen ei ole sallittua.', // %s = files or folders
    'File_Permission_Recursive' => 'Käytä rekursiivisesti?',
    'File_Permission_Wrong_Mode' => "Syötetty oikeusmoodi on väärä.",
    'User' => 'Käyttäjä',
    'Group' => 'Ryhmä',
    'Yes' => 'Kyllä',
    'No' => 'Ei',
    'Lang_Not_Found' => 'Kieltä ei löytynyt.',
    'Lang_Change' => 'Vaihda kieltä',
    'File_Not_Found' => 'Tiedostoa ei löydetty.',
    'File_Open_Edit_Not_Allowed' => 'Et voi %s tätä tiedostoa.', // %s = open or edit
    'Edit' => 'Muokkaa',
    'Edit_File' => "Muokkaa tiedoston sisältöä",
    'File_Save_OK' => "Tiedosto tallennettu onnistuneesti.",
    'File_Save_Error' => "Virhe tiedostoa tallennettaessa.",
    'New_File' => 'Uusi tiedosto',
    'No_Extension' => 'Sinun täytyy lisätä tiedostopääte.',
    'Valid_Extensions' => 'Hyväksyttyjä tiedostopäätteitä: %s', // %s = txt,log etc.

    'SERVER ERROR' => "PALVELINVIRHE",
    'forbidden' => "Kielletty",
    'wrong path' => "Väärä polku",
    'wrong name' => "Väärä nimi",
    'wrong extension' => "Väärä tiedostopääte",
    'wrong option' => "Väärä valinta",
    'wrong data' => "Väärä data",
    'wrong action' => "Väärä toiminto",
    'wrong sub-action' => "Väärä alitoiminto",
    'no action passed' => "Ei toimintoa",
    'no path' => "Ei polkua",
    'no file' => "Ei tiedostoa",
    'view type number missing' => "Näyttötyypin numero puuttuu",
    'Not enough Memory' => "Muistia ei ole riittävästi",
    'max_size_reached' => "Kuvahakemistosi on saavuttanut suurimman mahdollisen koon %d MB.", //%d = max overall size
    'B' => "B",
    'KB' => "KB",
    'MB' => "MB",
    'GB' => "GB",
    'TB' => "TB",
    'total size' => "Koko yhteensä"
];
