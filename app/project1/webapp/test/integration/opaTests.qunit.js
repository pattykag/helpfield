sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/TeachersList',
		'project1/test/integration/pages/TeachersObjectPage'
    ],
    function(JourneyRunner, opaJourney, TeachersList, TeachersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
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