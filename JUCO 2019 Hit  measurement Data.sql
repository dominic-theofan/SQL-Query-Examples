SELECT AVG(t.hit_exit_speed*2.23694) AS "Velocity", count(distinct t.measurement_id)
FROM plays.v2_ball_2019 AS t
INNER JOIN DICT.game_type gt
ON t.game_type = gt.game_type
WHERE t.is_data_verified = TRUE
AND t.result_pitch_result_string = 'InPlay'
AND t.game_type = 8
AND t.hit_exit_speed IS NOT NULL
AND t.game_id in
('fff34ccd-32db-11e9-8e74-181deafbea6d',
'fd82fe76-6159-11e9-a67a-e4a7a04f856b',
'fd3176eb-741d-11e9-82a0-54bf648b50d0',
'fd0a4841-3214-11e9-824a-54bf648b50d0',
'f68e3528-6aad-11e9-8ebd-54bf648dc922',
'f5dcd478-613a-11e9-abce-fc7774fe1ba8',
'f42f2e0e-62ec-11e9-8289-54bf648b50d0',
'f2f92a61-639d-11e9-828a-54bf648b50d0',
'f1d314a4-6f81-11e9-abe0-fc7774fe1ba8',
'f1bdb9a0-638a-11e9-a67b-e4a7a04f856b',
'f195876a-3175-11e9-a676-e4a7a04f856b',
'eda0ff30-2ca3-11e9-8243-54bf648b50d0',
'e9e6d215-2cb9-11e9-8243-54bf648b50d0',
'e9dc4ef5-4d9d-11e9-826d-54bf648b50d0',
'e9163d79-6ddd-11e9-8297-54bf648b50d0',
'e8cd071f-20df-11e9-8233-54bf648b50d0',
'e3ae510b-271b-11e9-a675-e4a7a04f856b',
'e1d932e1-3c74-11e9-8257-54bf648b50d0',
'e1bf0ee8-3216-11e9-9cbb-cc2f718a74b9',
'e1bd50fd-5b10-11e9-9cbe-cc2f718a74b9',
'd876221c-72a9-11e9-829e-54bf648b50d0',
'd7befa1d-318d-11e9-8249-54bf648b50d0',
'd5506e8d-690c-11e9-a67b-e4a7a04f856b',
'd2c0f504-57dc-11e9-8ea3-181deafbea6d',
'cf71e019-475b-11e9-9cbd-cc2f718a74b9',
'ce9a1fd6-45da-11e9-a67a-e4a7a04f856b',
'cbcd87ef-2cc1-11e9-8e6c-181deafbea6d',
'c9760ec8-6f5f-11e9-8ec3-54bf648dc922',
'c73012b5-57fc-11e9-8ea3-181deafbea6d',
'c170036a-5af5-11e9-9cbe-cc2f718a74b9',
'bb1b559b-4a89-11e9-9cbe-cc2f718a74b9',
'bab09ab8-6926-11e9-8ebb-54bf648dc922',
'b9f7cf88-74f7-11e9-abe7-fc7774fe1ba8',
'b9455a93-693f-11e9-8ebb-54bf648dc922',
'b75bbfac-3237-11e9-9cbb-cc2f718a74b9',
'b6aeb101-41f4-11e9-a679-e4a7a04f856b',
'b673b690-2bc5-11e9-8e6b-181deafbea6d',
'b622a129-4353-11e9-8e89-181deafbea6d',
'b581e0e8-4db0-11e9-826d-54bf648b50d0',
'afe77e13-4ce4-11e9-9cbe-cc2f718a74b9',
'aea17b4a-63b5-11e9-828a-54bf648b50d0',
'ae3b65e3-3d54-11e9-8258-54bf648b50d0',
'aa5f8293-32fa-11e9-824b-54bf648b50d0',
'a638e87f-3c50-11e9-8e80-181deafbea6d',
'a090af9a-32dd-11e9-824b-54bf648b50d0',
'9f8a1470-4cdc-11e9-826c-54bf648b50d0',
'9ece9e56-589c-11e9-9cbe-cc2f718a74b9',
'9e7befd7-2d63-11e9-9cbb-cc2f718a74b9',
'9c37ec73-2f0c-11e9-a676-e4a7a04f856b',
'9652c0e4-69e0-11e9-abd9-fc7774fe1ba8',
'945fc402-3c5b-11e9-a677-e4a7a04f856b',
'945dd955-6df8-11e9-8297-54bf648b50d0',
'939b8395-691b-11e9-9cbe-cc2f718a74b9',
'8d1245c7-4d8c-11e9-a67a-e4a7a04f856b',
'8c31e5b4-331b-11e9-824b-54bf648b50d0',
'8576bbe6-21cb-11e9-8234-54bf648b50d0',
'846d5dfb-75b9-11e9-abe8-fc7774fe1ba8',
'831c2487-4293-11e9-a67a-e4a7a04f856b',
'82b3e2ff-4cf2-11e9-826c-54bf648b50d0',
'7d0234a9-5e0b-11e9-a67a-e4a7a04f856b',
'7c98945b-6157-11e9-abce-fc7774fe1ba8',
'74f0ba56-728d-11e9-829e-54bf648b50d0',
'7315916f-63b6-11e9-9cbe-cc2f718a74b9',
'70300ca2-4683-11e9-9cbb-cc2f718a74b9',
'6b57d75f-50d9-11e9-a67a-e4a7a04f856b',
'67df14c3-62e0-11e9-8289-54bf648b50d0',
'65538e0c-6eb4-11e9-8298-54bf648b50d0',
'61bac8e0-6f60-11e9-abe0-fc7774fe1ba8',
'609a5e07-3552-11e9-824e-54bf648b50d0',
'5ecd0187-3d3e-11e9-8258-54bf648b50d0',
'5d974a99-6938-11e9-abd8-fc7774fe1ba8',
'5cf4a92d-2271-11e9-8235-54bf648b50d0',
'5bba8baa-322b-11e9-824a-54bf648b50d0',
'5a402379-2c1a-11e9-8242-54bf648b50d0',
'5a3e9a06-3168-11e9-8e72-181deafbea6d',
'5a10d053-42b2-11e9-8e88-181deafbea6d',
'59eeaff8-75a0-11e9-abe8-fc7774fe1ba8',
'57299d7d-6e9e-11e9-8298-54bf648b50d0',
'551abe2e-2c93-11e9-a675-e4a7a04f856b',
'531cf4d9-320f-11e9-a676-e4a7a04f856b',
'528c663d-2d7a-11e9-8e6d-181deafbea6d',
'4e1a6dd1-4295-11e9-8e88-181deafbea6d',
'4cd72e93-42b5-11e9-9cbb-cc2f718a74b9',
'490e8898-54bc-11e9-8e9f-181deafbea6d',
'47f0c9d9-58b6-11e9-9cbe-cc2f718a74b9',
'45938e6c-6935-11e9-9cbe-cc2f718a74b9',
'45728bcb-5e1e-11e9-9cbe-cc2f718a74b9',
'44e361a2-34b2-11e9-824d-54bf648b50d0',
'43b99424-21ee-11e9-8234-54bf648b50d0',
'3ec09d74-3794-11e9-8251-54bf648b50d0',
'3d04a3d3-211c-11e9-8233-54bf648b50d0',
'3b19cfb6-3171-11e9-8249-54bf648b50d0',
'33340d18-6902-11e9-abd8-fc7774fe1ba8',
'2fd31f84-324a-11e9-824a-54bf648b50d0',
'2f595cc7-2be3-11e9-9cbb-cc2f718a74b9',
'2e5484e1-6f75-11e9-8ec4-54bf648dc922',
'2cf1e8b8-66d9-11e9-a67b-e4a7a04f856b',
'26aa06c0-74d7-11e9-abe7-fc7774fe1ba8',
'2556d7b3-480a-11e9-a67a-e4a7a04f856b',
'1fd68995-7355-11e9-829f-54bf648b50d0',
'1ee5c6fd-2255-11e9-8235-54bf648b50d0',
'1ad4c24d-2661-11e9-a673-e4a7a04f856b',
'1984128f-36fc-11e9-8250-54bf648b50d0',
'165f2a2b-36e4-11e9-8250-54bf648b50d0',
'14ba5c74-3ad0-11e9-9cbb-cc2f718a74b9',
'13c0b8eb-639d-11e9-9cbe-cc2f718a74b9',
'1399fb64-3b9a-11e9-9cbb-cc2f718a74b9',
'10e89be3-5a48-11e9-a67a-e4a7a04f856b',
'0f5bb506-5e34-11e9-9cbe-cc2f718a74b9',
'0d2d5e04-2b12-11e9-a675-e4a7a04f856b',
'0c2e1214-3188-11e9-8e72-181deafbea6d',
'082f4cd2-3c94-11e9-8257-54bf648b50d0',
'0812488e-2bfa-11e9-8241-54bf648b50d0',
'07843d6c-4697-11e9-9cbb-cc2f718a74b9',
'0733a6ba-21ac-11e9-8234-54bf648b50d0',
'05d9a938-429d-11e9-9cbb-cc2f718a74b9',
'049e39de-4b5c-11e9-a67a-e4a7a04f856b',
'02cbe8fd-2c9c-11e9-8e6c-181deafbea6d',
'015d2716-7344-11e9-abe5-fc7774fe1ba8'
)
ORDER BY 1 DESC

