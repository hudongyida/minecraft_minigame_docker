# 실행 인자: UUID를 문자열로 변환할 엔티티

# 실행 결과는 timeisgold:uuid_tokenizer 스토리지의 output에 저장됩니다.

data modify storage timeisgold:uuid_tokenizer data.uuid set from entity @s UUID
function system:utils/uuid_tokenizer/store_byte
function system:utils/uuid_tokenizer/search_table with storage timeisgold:uuid_tokenizer data
function system:utils/uuid_tokenizer/concat with storage timeisgold:uuid_tokenizer data