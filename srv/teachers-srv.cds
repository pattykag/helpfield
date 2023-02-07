using {db} from '../db/schema';

service MyService {
    @odata.draft.enabled
    entity Teachers as select from db.Teachers
    {
        *,
        school.schoolName
    };
    entity Schools  as projection on db.Schools;
}
