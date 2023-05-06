view: feature_importance {
  sql_table_name: `TD.FeatureImportance`
    ;;

  dimension: feature {
    type: string
    sql: ${TABLE}.feature ;;
  }

  dimension: importance_cover {
    type: number
    sql: ${TABLE}.importance_cover ;;
  }

  dimension: importance_gain {
    type: number
    sql: ${TABLE}.importance_gain ;;
  }

  dimension: importance_weight {
    type: number
    sql: ${TABLE}.importance_weight ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
