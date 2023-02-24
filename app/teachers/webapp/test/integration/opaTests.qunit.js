sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/teachers/test/integration/FirstJourney',
		'ns/teachers/test/integration/pages/TeachersList',
		'ns/teachers/test/integration/pages/TeachersObjectPage'
    ],
    function(JourneyRunner, opaJourney, TeachersList, TeachersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/teachers') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTeachersList: TeachersList,
					onTheTeachersObjectPage: TeachersObjectPage
                }
            },
            opaJourney.run
        );
    }
);