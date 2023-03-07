using MyService from '../srv/teachers-srv';

// Títulos entidad Teachers
annotate MyService.Teachers with {
    ID     @UI.Hidden;
    name   @title : '{i18n>teachersName}';
    //school @title : '{i18n>schoolName}';
}

// Títulos entidad Schools
annotate MyService.Schools with {
    ID         @(
        UI.Hidden,
        Common : {Text : 'schoolName'}
    );
    schoolName @title : '{i18n>schoolName}'
};


annotate MyService.Teachers with @(UI : {
    // Título en la tabla
    HeaderInfo       : {
        TypeName       : '{i18n>teacher}', // Singular
        TypeNamePlural : '{i18n>teachers}', // Plural
    // Title: {
    //     $Type: 'UI.DataField',
    //     Value: name
    // }
    },
    // Filtro mostrado encima de la tabla
    SelectionFields  : [school_ID],
    // Campos mostrados en la tabla
    LineItem         : [
        {Value : name},
        {Value : school_ID}
    ],
    // Ventana que aparece al darle al botón de crear
    Facets           : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : 'Add Teacher',
        Target : '@UI.FieldGroup#Main'
    }],
    // Campos a crear
    FieldGroup#Main : {Data : [
        {Value : name},
        {Value : school_ID}
    ]},
});

// Muestra - Value Help de Schools
annotate MyService.Teachers with {
    school @(Common : {
        Label : '{i18n>schoolName}',
        //show text, not id for school in the context of teachers
        Text            : school.schoolName,
        TextArrangement : #TextOnly,
        // value help
        ValueListWithFixedValues,
        ValueList       : {
            $Type          : 'Common.ValueListType',
            CollectionPath : 'Schools',
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterInOut',
                    LocalDataProperty : school_ID,
                    ValueListProperty : 'ID'
                },
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'schoolName'
                }
            ]
        },
    })
}
