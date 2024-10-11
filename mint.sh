dfx start --clean --background
dfx identity use default
dfx identity remove alice
dfx identity remove icrc7_deployer

dfx identity new alice
dfx identity use alice
export ALICE_PRINCIPAL=$(dfx identity get-principal)

dfx identity new icrc7_deployer
dfx identity use icrc7_deployer
export ADMIN_PRINCIPAL=$(dfx identity get-principal)

dfx deploy icrc7 --argument 'record {icrc7_args = null; icrc37_args =null; icrc3_args =null;}' --mode reinstall
export ICRC7_CANISTER=$(dfx canister id icrc7)
dfx canister call icrc7 init
dfx canister call icrc7 icrcX_mint '(vec {record {token_id = 0 : nat; owner = opt record { owner = principal "'$ICRC7_CANISTER'"; subaccount = null;}; metadata = variant { Class = vec { record { value = variant { Text = "https://github.com/poroburu/icrc_nft.mo/blob/poro-nft-collection/mcats1.svg" }; name = "icrc7:metadata:uri:image"; immutable = true; }; } }; memo = opt blob "\00\01"; override = true; created_at_time = null; }; record {token_id = 1 : nat; owner = opt record { owner = principal "'$ICRC7_CANISTER'"; subaccount = null;}; metadata = variant { Class = vec { record { value = variant { Text = "https://github.com/poroburu/icrc_nft.mo/blob/poro-nft-collection/mcats2.svg" }; name = "icrc7:metadata:uri:image"; immutable = true; }; } }; memo = opt blob "\00\01"; override = true; created_at_time = null; }; record {token_id = 2 : nat; owner = opt record { owner = principal "'$ICRC7_CANISTER'"; subaccount = null;}; metadata = variant { Class = vec { record { value = variant { Text = "https://github.com/poroburu/icrc_nft.mo/blob/poro-nft-collection/mcats3.svg" }; name = "icrc7:metadata:uri:image"; immutable = true; }; } }; memo = opt blob "\00\01"; override = true; created_at_time = null; }; record {token_id = 3 : nat; owner = opt record { owner = principal "'$ICRC7_CANISTER'"; subaccount = null;}; metadata = variant { Class = vec { record { value = variant { Text = "https://github.com/poroburu/icrc_nft.mo/blob/poro-nft-collection/mcats4.svg" }; name = "icrc7:metadata:uri:image"; immutable = true; }; } }; memo = opt blob "\00\01"; override = true; created_at_time = null; }; record {token_id = 4 : nat; owner = opt record { owner = principal "'$ICRC7_CANISTER'"; subaccount = null;}; metadata = variant { Class = vec { record { value = variant { Text = "https://github.com/poroburu/icrc_nft.mo/blob/poro-nft-collection/mcats5.svg" }; name = "icrc7:metadata:uri:image"; immutable = true; }; } }; memo = opt blob "\00\01"; override = true; created_at_time = null; }; })'