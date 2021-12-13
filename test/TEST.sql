/* Domo View Name: prod.training_platform.instructor_summary_general 
 * Prod Domo View ID: 
 *
 * This View is for the training platform to get information for each instructor
 *
 *
 * View Filters:
 *    1 - Filtering on is-deleted (Including "false")
 * 
 * Fields from nl_tp.training_instructors
 * instructor_guid, instructor_number, instructor_created_datetime, account_id, incrementing_number, Instructor Full Name, company_name, instructor_gender,
 * instructor_email, instructor_phone_number, instructor_state, instructor_city, instructor_latitude, instructor_longitude, updated_datetime, permitted_curricula, 
 * first_certification_date, first_core_certification_date, first_certified_instructor_certification_date, first_certified_training_counselor_certification_date,
 * training_counselor, is_employee, is_indexed, is_searchable, has_agreed_to_bonus_plan_datetime, payment_on_boarding_datetime, payment_off_boarding_date, 
 * last_touched_date, Stripe Onboarded?, platform_record_type, is_deleted
 *
 * Calculated Fields: 
 *    (1) Stripe Onboarded
 *    (2) Instructor Full Name
 *    
 *    
 */

/* Instructor Full Name */
/* Want the Instructors full name, so I concatted the first and last name of the instructor */
 * CONCAT(`instructor_first_name`, ' ', `instructor_last_name`)

 
 /*Is Instructor Course Calculated Field*/
 /*(CASE 
 * 	when `abbreviation` like '%-TC' then 'Yes'
 *	when `abbreviation` like '%-CI' then 'Yes'
 *	else 'No'
 *end)
 */
 
 /*Stripe Onboarded*/
 /*(case 
 *  when `payment_processor_id` is not null then 'Yes'
 * else 'No'
 * end) */
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
test
entered
info

field
date
done
test

Date field


