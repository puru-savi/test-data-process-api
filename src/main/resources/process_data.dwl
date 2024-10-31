%dw 2.0
output application/json
---
{
	user_id: payload.id,
	full_name: (payload.name splitBy  "")[-1 to 0] map ((char) -> 
    if ( char == " " ) "<space>" else char),
	contact_email: payload.email
}