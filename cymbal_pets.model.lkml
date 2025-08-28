connection: "@{connection_name}"

label: "Cymbal Pets"

include: "/explores/orders.explore.lkml"
include: "/explores/purchases.explore.lkml"
# include: "/views/refined/customers.view.lkml"
# include: "/views/pdt/orders_and_items_flat.view.lkml"

datagroup: cymbal_pets_default_datagroup {
  max_cache_age: "12 hours"
  sql_trigger: SELECT COUNT(*) FROM `@{gcp_project}.@{bq_dataset}.orders` ;;
}

persist_with: cymbal_pets_default_datagroup
