sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'nshelp/helpproject/test/integration/FirstJourney',
		'nshelp/helpproject/test/integration/pages/TeachersList',
		'nshelp/helpproject/test/integration/pages/TeachersObjectPage'
    ],
    function(JourneyRunner, opaJourney, TeachersList, TeachersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('nshelp/helpproject') + '/index.html'
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