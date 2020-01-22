DROP PROCEDURE IF EXISTS MI182_bmdelacruz2.update_event_type;

CREATE OR REPLACE PROCEDURE
    MI182_bmdelacruz2.update_event_type(integer, varchar)
LANGUAGE
    plpgsql
AS $procedure$
BEGIN

    INSERT INTO
        MI182_bmdelacruz2.event_types (type)
    SELECT
        $2
    WHERE NOT EXISTS (
        SELECT type FROM MI182_bmdelacruz2.event_types WHERE type = $2
    );

    UPDATE MI182_bmdelacruz2.events
    SET
        event_type_id = (SELECT
            MI182_bmdelacruz2.event_types.id FROM MI182_bmdelacruz2.event_types WHERE type = $2)
    WHERE id = $1;

    COMMIT;
END;
$procedure$
;
