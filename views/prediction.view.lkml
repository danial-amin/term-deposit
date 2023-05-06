view: prediction {
  parameter: CustomerAge{type: number}
  parameter: TotalBalance{type: number}
  parameter: TotalDuration{type: number}

  derived_table: {
    sql:
    SELECT * FROM ML.PREDICT(MODEL `bank-churners-385705.churn.RFmodel`,
    (SELECT {% parameter CustomerAge %} AS age,
            {% parameter TotalBalance %} AS balance,
            {% parameter TotalDuration %} AS duration));;
  }
  dimension: predict_prob {
    type: number
    sql: ${TABLE}.predicted_y[1][1] ;;
  }

  dimension: other_prob {
    type: number
    sql: ${TABLE}.predicted_y[0][1] ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }
  dimension: balance {
    type: number
    sql: ${TABLE}.balance ;;
  }
  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }
}
