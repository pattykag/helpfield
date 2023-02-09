using MyService as service from './teachers-srv';

annotate service.Teachers with {
    schoolName @Common : {
        // Text            : school.schoolName,
        // TextArrangement : #TextOnly,
        ValueListWithFixedValues, //Instead of dialog box, the value help is a dropdown
        ValueList : {
            $Type : 'Common.ValueListType',
            Label          : '{i18n>schoolName}',
            CollectionPath : 'Schools',
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterInOut',
                    LocalDataProperty : 'school_schoolName',
                    ValueListProperty : schoolName,                    
                }
            ]
        }
    }
};