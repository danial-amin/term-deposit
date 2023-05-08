connection: "term-deposit"

# include all the views
include: "/views/**/*.view"

datagroup: term-deposit_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: term-deposit_default_datagroup

explore: term_deposit_full {}

explore: prediction {}
