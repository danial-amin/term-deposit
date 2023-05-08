view: term_deposit_full {
  sql_table_name: `TD.TermDepositFull`
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}.balance ;;
  }

  dimension: campaign {
    type: number
    sql: ${TABLE}.campaign ;;
  }

  dimension: defaulted {
    type: number
    sql: ${TABLE}.defaulted ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension: education {
    type: number
    sql: ${TABLE}.education ;;
  }

  dimension: housing {
    type: number
    sql: ${TABLE}.housing ;;
  }

  dimension: job {
    type: number
    sql: ${TABLE}.job ;;
  }

  dimension: loan {
    type: number
    sql: ${TABLE}.loan ;;
  }

  dimension: marital {
    type: number
    sql: ${TABLE}.marital ;;
  }

  dimension: pdays {
    type: number
    sql: ${TABLE}.pdays ;;
  }

  dimension: poutcome {
    type: number
    sql: ${TABLE}.poutcome ;;
  }

  dimension: previous {
    type: number
    sql: ${TABLE}.previous ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.y ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: sum_of_td {
    type: sum
    sql: ${TABLE}.y;;
}
  measure: ratio {
    type: number
    sql: ${sum_of_td}/${count};;
  }
}
