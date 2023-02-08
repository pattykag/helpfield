using MyService as service from './teachers-srv';

annotate service.Teachers with {
    schoolName @Common : {
        // Text            : school.schoolName,
        // TextArrangement : #TextOnly,
        ValueListWithFixedValues,
        ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Schools',
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterInOut',
                    LocalDataProperty : 'schoolName',
                    ValueListProperty : 'schoolName',
                    
                }
            ]
        },
    
        // ValueList                : {
        //     $Type          : 'Common.ValueListType',
        //     CollectionPath : 'Schools',
        //     Parameters     : [
        //         {
        //             $Type             : 'Common.ValueListParameterInOut',
        //             LocalDataProperty : 'school_ID',
        //             ValueListProperty : 'ID'
        //         },
        //         {
        //             $Type             : 'Common.ValueListParameterDisplayOnly',
        //             ValueListProperty : 'schoolName'
        //         }
        //     ]
        // },
        // ValueListWithFixedValues : false
    }
};


// {
//     $Type             : 'Common.ValueListParameterInOut',
//     LocalDataProperty : name,
//     ValueListProperty : 'schoolName'
// },
