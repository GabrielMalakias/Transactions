# Transactions

Roda + Sequel app

POST transactions/

Request:
{
  "person_id": 1,
  "value": 1,
  "started_at": "2022-02-03T04:05:06+00:00"
}

Response:
{
  "person_id": 1,
  "value": 1,
  "started_at": "2022-02-03T04:05:06+00:00"
  "state":"PENDING"
  "reference_id":"4168af33-5b89-4303-810f-b840bb949104"
}

PUT transactions/:reference_id/approve
Request:
{
  person_id: 1
}

Response:
{
  "person_id": 1,
  "value": 1,
  "started_at": "2022-02-03T04:05:06+00:00"
  "state":"APPROVED"
  "reference_id":"4168af33-5b89-4303-810f-b840bb949104"
}

PUT transactions/:reference_id/decline
Request:
{
  person_id: 1
}

Response:
{
  "person_id": 1,
  "value": 1,
  "started_at": "2022-02-03T04:05:06+00:00"
  "state":"DECLINED"
  "reference_id":"4168af33-5b89-4303-810f-b840bb949104"
}

GET /transactions/:reference_id
Response:
{
  "person_id": 1,
  "value": 1,
  "started_at": "2022-02-03T04:05:06+00:00"
  "state":"PENDING"
  "reference_id":"4168af33-5b89-4303-810f-b840bb949104"
}

GET person/:id/balance

Response
{
  "id": 1,
  "balance": 200
}
