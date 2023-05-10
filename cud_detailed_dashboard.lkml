- dashboard: cud_detailed_dashboard
  title: CUD Detailed Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: FVD1bnd66hL1kgoBOyESEc
  elements:
  - title: Commitments by Region
    name: Commitments by Region
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_grid
    fields: [gcp_billing_export.active_commitment, gcp_billing_export.usage_start_date,
      gcp_billing_export.location__region, gcp_billing_export.utilizied_commitment,
      gcp_billing_export.eligible_on_demand_usage]
    pivots: [gcp_billing_export.usage_start_date]
    fill_fields: [gcp_billing_export.usage_start_date]
    filters: {}
    sorts: [gcp_billing_export.usage_start_date, gcp_billing_export.location__region,
      gcp_billing_export.active_commitment desc 0]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{category: table_calculation, expression: "${gcp_billing_export.total_usage_amount}/86400",
        label: Active Commitment, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: active_commitment, _type_hint: number,
        is_disabled: true}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      gcp_billing_export.usage_start_date: 132
    series_cell_visualizations:
      gcp_billing_export.active_commitment:
        is_active: false
    series_text_format:
      gcp_billing_export.active_commitment:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [gcp_billing_export.eligible_on_demand_usage]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    hidden_pivots: {}
    defaults_version: 1
    title_hidden: true
    listen:
      Billing Account ID: gcp_billing_export.billing_account_id
      Usage Start Date: gcp_billing_export.usage_start_date
      CPU or RAM: gcp_billing_export.cpu_or_ram
      Location Region: gcp_billing_export.location__region
      Project ID: gcp_billing_export.project__id
      Machine Type: gcp_billing_export.machine_type
      State: gcp_billing_export.state_resource
    row: 13
    col: 0
    width: 24
    height: 8
  - title: Utilized Commitment & On Demand Usage
    name: Utilized Commitment & On Demand Usage
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_column
    fields: [gcp_billing_export.usage_start_date, gcp_billing_export.utilizied_commitment,
      gcp_billing_export.eligible_on_demand_usage]
    fill_fields: [gcp_billing_export.usage_start_date]
    filters:
      gcp_billing_export__credits.type: '"COMMITTED_USAGE_DISCOUNT"'
    sorts: [gcp_billing_export.usage_start_date desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{category: measure, label: Filtered gcp_billing_export.utilizied_commitment,
        based_on: gcp_billing_export.utilizied_commitment, _kind_hint: measure, measure: filtered_gcp_billing_exportutilizied_commitment,
        type: count_distinct, _type_hint: number, filters: {gcp_billing_export__credits.type: '"COMMITTED_USAGE_DISCOUNT"'}},
      {category: measure, label: Filtered gcp_billing_export.eligible_on_demand_usage,
        based_on: gcp_billing_export.eligible_on_demand_usage, _kind_hint: measure,
        measure: filtered_gcp_billing_exporteligible_on_demand_usage, type: count_distinct,
        _type_hint: number, filters: {gcp_billing_export__credits.type: '"COMMITTED_USAGE_DISCOUNT"'}}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Billing Account ID: gcp_billing_export.billing_account_id
      Usage Start Date: gcp_billing_export.usage_start_date
      CPU or RAM: gcp_billing_export.cpu_or_ram
      Location Region: gcp_billing_export.location__region
      Project ID: gcp_billing_export.project__id
      Machine Type: gcp_billing_export.machine_type
      State: gcp_billing_export.state_resource
    row: 0
    col: 9
    width: 15
    height: 6
  - title: Active Commitment by Project
    name: Active Commitment by Project
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_grid
    fields: [gcp_billing_export.active_commitment, gcp_billing_export.usage_start_date,
      gcp_billing_export.project__id, gcp_billing_export.utilizied_commitment, gcp_billing_export.eligible_on_demand_usage]
    pivots: [gcp_billing_export.usage_start_date]
    filters:
      gcp_billing_export.active_commitment: ">0"
    sorts: [gcp_billing_export.usage_start_date, gcp_billing_export.active_commitment
        desc 0]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{category: table_calculation, expression: "${gcp_billing_export.total_usage_amount}/86400",
        label: Active Commitment, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: active_commitment, _type_hint: number,
        is_disabled: true}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      gcp_billing_export.usage_start_date: 132
    series_cell_visualizations:
      gcp_billing_export.active_commitment:
        is_active: false
    series_text_format:
      gcp_billing_export.active_commitment:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [gcp_billing_export.eligible_on_demand_usage]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    hidden_pivots: {}
    defaults_version: 1
    title_hidden: true
    listen:
      Billing Account ID: gcp_billing_export.billing_account_id
      Usage Start Date: gcp_billing_export.usage_start_date
      CPU or RAM: gcp_billing_export.cpu_or_ram
      Location Region: gcp_billing_export.location__region
      Project ID: gcp_billing_export.project__id
      Machine Type: gcp_billing_export.machine_type
      State: gcp_billing_export.state_resource
    row: 22
    col: 0
    width: 24
    height: 6
  - title: Eligible On Demand Usage by Machine Type
    name: Eligible On Demand Usage by Machine Type
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_line
    fields: [gcp_billing_export.usage_start_date, gcp_billing_export.eligible_on_demand_usage,
      gcp_billing_export.machine_type]
    pivots: [gcp_billing_export.machine_type]
    fill_fields: [gcp_billing_export.usage_start_date]
    filters:
      gcp_billing_export__credits.type: '"COMMITTED_USAGE_DISCOUNT"'
    sorts: [gcp_billing_export.machine_type, gcp_billing_export.usage_start_date desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{category: measure, label: Filtered gcp_billing_export.utilizied_commitment,
        based_on: gcp_billing_export.utilizied_commitment, _kind_hint: measure, measure: filtered_gcp_billing_exportutilizied_commitment,
        type: count_distinct, _type_hint: number, filters: {gcp_billing_export__credits.type: '"COMMITTED_USAGE_DISCOUNT"'}},
      {category: measure, label: Filtered gcp_billing_export.eligible_on_demand_usage,
        based_on: gcp_billing_export.eligible_on_demand_usage, _kind_hint: measure,
        measure: filtered_gcp_billing_exporteligible_on_demand_usage, type: count_distinct,
        _type_hint: number, filters: {gcp_billing_export__credits.type: '"COMMITTED_USAGE_DISCOUNT"'}}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Billing Account ID: gcp_billing_export.billing_account_id
      Usage Start Date: gcp_billing_export.usage_start_date
      CPU or RAM: gcp_billing_export.cpu_or_ram
      Location Region: gcp_billing_export.location__region
      Project ID: gcp_billing_export.project__id
      State: gcp_billing_export.state_resource
    row: 5
    col: 0
    width: 9
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h2","children":[{"text":"Commitments by Project"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 21
    col: 0
    width: 24
    height: 1
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h2","children":[{"text":"Commitments by Region"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 12
    col: 0
    width: 24
    height: 1
  - title: CUD Commitment Overview
    name: CUD Commitment Overview
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_grid
    fields: [gcp_billing_export.usage_start_date, gcp_billing_export.utilizied_commitment,
      gcp_billing_export.eligible_on_demand_usage, gcp_billing_export.active_commitment,
      gcp_billing_export.all_usage]
    fill_fields: [gcp_billing_export.usage_start_date]
    filters: {}
    sorts: [gcp_billing_export.usage_start_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: measure, label: Filtered gcp_billing_export.utilizied_commitment,
        based_on: gcp_billing_export.utilizied_commitment, _kind_hint: measure, measure: filtered_gcp_billing_exportutilizied_commitment,
        type: count_distinct, _type_hint: number, filters: {gcp_billing_export__credits.type: '"COMMITTED_USAGE_DISCOUNT"'}},
      {category: measure, label: Filtered gcp_billing_export.eligible_on_demand_usage,
        based_on: gcp_billing_export.eligible_on_demand_usage, _kind_hint: measure,
        measure: filtered_gcp_billing_exporteligible_on_demand_usage, type: count_distinct,
        _type_hint: number, filters: {gcp_billing_export__credits.type: '"COMMITTED_USAGE_DISCOUNT"'}}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", gcp_billing_export.usage_start_date, gcp_billing_export.all_usage,
      gcp_billing_export.active_commitment, gcp_billing_export.utilizied_commitment,
      gcp_billing_export.eligible_on_demand_usage]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      gcp_billing_export.utilizied_commitment:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [gcp_billing_export.eligible_on_demand_usage]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_types: {}
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Billing Account ID: gcp_billing_export.billing_account_id
      Usage Start Date: gcp_billing_export.usage_start_date
      CPU or RAM: gcp_billing_export.cpu_or_ram
      Location Region: gcp_billing_export.location__region
      Project ID: gcp_billing_export.project__id
      Machine Type: gcp_billing_export.machine_type
      State: gcp_billing_export.state_resource
    row: 0
    col: 0
    width: 9
    height: 5
  - title: Utilized vs Active Commitment
    name: Utilized vs Active Commitment
    model: gcp_billing
    explore: gcp_billing_export
    type: looker_column
    fields: [gcp_billing_export.usage_start_date, gcp_billing_export.eligible_on_demand_usage,
      gcp_billing_export.utilizied_commitment, gcp_billing_export.active_commitment]
    fill_fields: [gcp_billing_export.usage_start_date]
    filters: {}
    sorts: [gcp_billing_export.active_commitment desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{category: measure, label: Filtered gcp_billing_export.utilizied_commitment,
        based_on: gcp_billing_export.utilizied_commitment, _kind_hint: measure, measure: filtered_gcp_billing_exportutilizied_commitment,
        type: count_distinct, _type_hint: number, filters: {gcp_billing_export__credits.type: '"COMMITTED_USAGE_DISCOUNT"'}},
      {category: measure, label: Filtered gcp_billing_export.eligible_on_demand_usage,
        based_on: gcp_billing_export.eligible_on_demand_usage, _kind_hint: measure,
        measure: filtered_gcp_billing_exporteligible_on_demand_usage, type: count_distinct,
        _type_hint: number, filters: {gcp_billing_export__credits.type: '"COMMITTED_USAGE_DISCOUNT"'}}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Billing Account ID: gcp_billing_export.billing_account_id
      Usage Start Date: gcp_billing_export.usage_start_date
      CPU or RAM: gcp_billing_export.cpu_or_ram
      Location Region: gcp_billing_export.location__region
      Project ID: gcp_billing_export.project__id
      Machine Type: gcp_billing_export.machine_type
      State: gcp_billing_export.state_resource
    row: 6
    col: 9
    width: 15
    height: 6
  filters:
  - name: Billing Account ID
    title: Billing Account ID
    type: field_filter
    default_value: '018737-F5C9DA-5014BE'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.billing_account_id
  - name: Machine Type
    title: Machine Type
    type: field_filter
    default_value: N2
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.machine_type
  - name: CPU or RAM
    title: CPU or RAM
    type: field_filter
    default_value: CPU
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.cpu_or_ram
  - name: Usage Start Date
    title: Usage Start Date
    type: field_filter
    default_value: 1 week ago for 1 week
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.usage_start_date
  - name: Location Region
    title: Location Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.location__region
  - name: Project ID
    title: Project ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.project__id
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: gcp_billing
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.state_resource
