namespace db;

entity Teachers {
    key ID     : UUID @UI.Hidden: true; // @title : '{i18n>teachersID}';
        name   : String(50) @title : '{i18n>teachersName}';
        school : Association to one Schools @UI.Hidden: true; // @title : '{i18n>teachersID}';
}

entity Schools {
    key ID   : UUID @UI.Hidden: true; //@title : '{i18n>schoolsID}';
        schoolName : String(50) @title : '{i18n>schoolsName}';
}
