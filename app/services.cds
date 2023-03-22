using MyService from '../srv/teachers-srv';

annotate MyService.Teachers with {
    ID     @UI.Hidden;
    name   @title : '{i18n>teachersName}';
    //school @title : '{i18n>schoolName}';
}

annotate MyService.Schools with {
    ID         @(
        UI.Hidden,
        Common : {Text : schoolName}
    );
    schoolName @title : '{i18n>schoolName}'
};

annotate MyService.Teachers with @(UI : {
    HeaderInfo       : {
        TypeName       : '{i18n>teacher}',
        TypeNamePlural : '{i18n>teachers}',
    // Title: {
    //     $Type: 'UI.DataField',
    //     Value: name
    // }
    },
    SelectionFields  : [school_ID],
    LineItem         : [
        {Value : name},
        {Value : school_ID}
    ],
    Facets           : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : 'Add Teacher',
        Target : '@UI.FieldGroup#Main'
    }],
    FieldGroup#Main : {Data : [
        {Value : name},
        {Value : school_ID}
    ]},
});

// Muestra
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

using from './helpproject/annotations';