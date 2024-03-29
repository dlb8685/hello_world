COPY {{ DESTINATION_TABLE }} 
FROM '{{ S3_FILE }}' 
ACCESS_KEY_ID '{{ AWS_CREDENTIAL.access_key_id }}' SECRET_ACCESS_KEY '{{ AWS_CREDENTIAL.secret_access_key }}'
{{ MANIFEST }} {{ GZIP }} 
DELIMITER AS '{{ DELIMITER }}' 
DATEFORMAT 'auto' ACCEPTANYDATE EMPTYASNULL
IGNOREHEADER {{ HEADER_ROWS }} {{ FILL_RECORD }} {{ EMPTY_AS_NULL }} {{ ESCAPE }} {{ REMOVEQUOTES }} 
MAXERROR {{ MAX_ERRORS }}
{{ TRUNCATE_COLUMNS }} {{ ACCEPTINVCHARS }} 
STATUPDATE {{ STAT_UPDATE }} COMPUPDATE {{ COMP_UPDATE }}