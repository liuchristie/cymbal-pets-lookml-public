---
- dashboard: business_pulse
  title: Cymbal Pets Business Pulse
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: ESQXH0j1AZlG9HCqhRG6mB
  elements:
  - title: Top 10 Brands
    name: Top 10 Brands
    model: cymbal_pets
    explore: order_items
    type: looker_column
    fields: [products.brand, order_items.total_sales, products.category]
    pivots: [products.category]
    sorts: [products.category, order_items.total_sales desc 4]
    limit: 500
    column_limit: 50
    row_total: right
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    advanced_vis_config: |-
      {
        chart: {},
        series: [{
          name: 'Accessories'
        }, {
          name: 'Food'
        }, {
          name: 'Health & Wellness'
        }, {
          name: 'Toys'
        }]
      }
    defaults_version: 1
    hidden_pivots:
      "$$$_row_total_$$$":
        is_entire_pivot_hidden: true
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
    listen:
      Address State: customers.address_state
      Order Date: orders.order_date
    row: 0
    col: 12
    width: 12
    height: 8
  - title: Average Order Size
    name: Average Order Size
    model: cymbal_pets
    explore: order_items
    type: single_value
    fields: [order_items.average_sales]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Address State: customers.address_state
      Order Date: orders.order_date
    row: 4
    col: 6
    width: 6
    height: 4
  - title: Total Sales, Year over Year
    name: Total Sales, Year over Year
    model: cymbal_pets
    explore: order_items
    type: looker_line
    fields: [order_items.total_sales, orders.order_month_name, orders.order_year]
    pivots: [orders.order_year]
    fill_fields: [orders.order_year]
    sorts: [orders.order_year, orders.order_month_name]
    limit: 500
    column_limit: 50
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.total_sales,
            id: 2023 - order_items.total_sales, name: '2023'}, {axisId: order_items.total_sales,
            id: 2024 - order_items.total_sales, name: '2024'}, {axisId: order_items.total_sales,
            id: 2025 - order_items.total_sales, name: '2025'}], showLabels: true,
        showValues: true, valueFormat: "$0,,\\M\\", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    advanced_vis_config: |-
      {
        chart: {},
        caption: {
          text: 'Note: Fiscal year starts on February 1st',
          align: 'center',
          margin: 2,
          style: {
            fontSize: "1em",
            color: "#FF0000"
          },
        },
        series: [{
          name: '2023'
        }, {
          name: '2024'
        }, {
          name: '2025'
        }]
      }
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Address State: customers.address_state
    row: 8
    col: 0
    width: 12
    height: 6
  - title: Customer Sales By State
    name: Customer Sales By State
    model: cymbal_pets
    explore: order_items
    type: looker_geo_choropleth
    fields: [order_items.total_sales, customers.address_state]
    sorts: [order_items.total_sales desc 0]
    limit: 500
    column_limit: 50
    map: usa
    map_projection: ''
    show_view_names: false
    quantize_colors: false
    inner_border_color: ''
    inner_border_width: 2
    colors: [green]
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    listen:
      Address State: customers.address_state
      Order Date: orders.order_date
    row: 8
    col: 12
    width: 12
    height: 6
  - title: Metrics by Pet Type
    name: Metrics by Pet Type
    model: cymbal_pets
    explore: order_items
    type: looker_grid
    fields: [pet_profiles.pet_type, orders.total_orders, order_items.total_sales,
      order_items.average_sales]
    filters:
      pet_profiles.pet_type: "-NULL"
    sorts: [orders.total_orders desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      order_items.average_sales:
        is_active: true
      orders.total_orders:
        is_active: true
      order_items.total_sales:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Address State: customers.address_state
      Order Date: orders.order_date
    row: 14
    col: 12
    width: 12
    height: 5
  - title: Total Sales KPI
    name: Total Sales KPI
    model: cymbal_pets
    explore: order_items
    type: single_value
    fields: [orders.order_year, orders.total_orders, order_items.total_sales]
    fill_fields: [orders.order_year]
    filters:
      orders.order_year: 2 years
    sorts: [orders.order_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent change from last year
      value_format:
      value_format_name: percent_1
      calculation_type: percent_difference_from_previous
      table_calculation: percent_change_from_last_year
      args:
      - orders.total_orders
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      label: Percent change from last year
      value_format:
      value_format_name: percent_1
      calculation_type: percent_difference_from_previous
      table_calculation: percent_change_from_last_year_1
      args:
      - order_items.total_sales
      _kind_hint: measure
      _type_hint: number
    filter_expression: "${orders.order_date}<add_years(-1,now())\nOR\n( ${orders.order_date}<now()\
      \ \n  AND\n  ${orders.order_date}>date(extract_years(now()),1,1)\n)"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#202124"
    single_value_title: Total Sales
    value_format: "$###,###"
    comparison_label: vs last year
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [orders.order_year, orders.total_orders, percent_change_from_last_year]
    listen:
      Address State: customers.address_state
    row: 0
    col: 6
    width: 6
    height: 4
  - title: Total Orders KPI
    name: Total Orders KPI
    model: cymbal_pets
    explore: order_items
    type: single_value
    fields: [orders.order_year, orders.total_orders, order_items.total_sales]
    fill_fields: [orders.order_year]
    filters:
      orders.order_year: 2 years
    sorts: [orders.order_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent change from last year
      value_format:
      value_format_name: percent_1
      calculation_type: percent_difference_from_previous
      table_calculation: percent_change_from_last_year
      args:
      - orders.total_orders
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      label: Percent change from last year
      value_format:
      value_format_name: percent_1
      calculation_type: percent_difference_from_previous
      table_calculation: percent_change_from_last_year_1
      args:
      - order_items.total_sales
      _kind_hint: measure
      _type_hint: number
    filter_expression: "${orders.order_date}<add_years(-1,now())\nOR\n( ${orders.order_date}<now()\
      \ \n  AND\n  ${orders.order_date}>date(extract_years(now()),1,1)\n)"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#202124"
    single_value_title: Total Orders
    value_format: ''
    comparison_label: vs last year
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [orders.order_year, order_items.total_sales, percent_change_from_last_year_1]
    listen:
      Address State: customers.address_state
    row: 0
    col: 0
    width: 6
    height: 4
  - title: Online Orders KPI
    name: Online Orders KPI
    model: cymbal_pets
    explore: order_items
    type: single_value
    fields: [orders.order_year, orders.total_orders]
    fill_fields: [orders.order_year]
    filters:
      orders.order_year: 2 years
      orders.order_type: Online
    sorts: [orders.order_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent change from last year
      value_format:
      value_format_name: percent_1
      calculation_type: percent_difference_from_previous
      table_calculation: percent_change_from_last_year
      args:
      - orders.total_orders
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      label: Percent change from last year
      value_format:
      value_format_name: percent_1
      calculation_type: percent_difference_from_previous
      table_calculation: percent_change_from_last_year_1
      args:
      - order_items.total_sales
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    filter_expression: "${orders.order_date}<add_years(-1,now())\nOR\n( ${orders.order_date}<now()\
      \ \n  AND\n  ${orders.order_date}>date(extract_years(now()),1,1)\n)"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#202124"
    single_value_title: Online Orders
    value_format: ''
    comparison_label: vs last year
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [orders.order_year]
    listen:
      Address State: customers.address_state
    row: 4
    col: 0
    width: 6
    height: 4
  - title: Online v Offline Sales
    name: Online v Offline Sales
    model: cymbal_pets
    explore: order_items
    type: looker_line
    fields: [order_items.total_sales, orders.order_type, orders.order_month]
    pivots: [orders.order_type]
    filters:
      orders.order_year: 2 years
    sorts: [orders.order_type, orders.order_month desc]
    limit: 500
    column_limit: 50
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Online - order_items.total_sales: "#34A853"
      Offline - order_items.total_sales: "#FBBC04"
    custom_color_enabled: true
    custom_color: "#202124"
    show_single_value_title: true
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: vs same period last year
    enable_conditional_formatting: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Address State: customers.address_state
      Order Date: orders.order_date
    row: 14
    col: 0
    width: 12
    height: 5
  - title: Total Sales by Product Category then Brand
    name: Total Sales by Product Category then Brand
    model: cymbal_pets
    explore: order_items
    type: looker_column
    fields: [products.brand, order_items.total_sales, products.category]
    pivots: [products.category]
    sorts: [products.category, order_items.total_sales desc 4]
    limit: 500
    column_limit: 50
    row_total: right
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    advanced_vis_config: |-
      {
        chart: {
          animation: true,

        },
        caption: {
          text: 'Select the category to drill in',
          align: 'center',
          margin: 2,
          style: {
            fontSize: "1em",
          },
        },
        series: [{
          name: 'Total Sales',
          type: 'treemap',
          allowTraversingTree: true,
          layoutAlgorithm: "squarified"
        }],
      }
    defaults_version: 1
    hidden_pivots:
      "$$$_row_total_$$$":
        is_entire_pivot_hidden: true
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
    listen:
      Address State: customers.address_state
      Order Date: orders.order_date
    row: 19
    col: 0
    width: 12
    height: 10
  - title: Total Sales by Category
    name: Total Sales by Category
    model: cymbal_pets
    explore: order_items
    type: looker_area
    fields: [order_items.total_sales, products.category, orders.order_date]
    pivots: [products.category]
    fill_fields: [orders.order_date]
    sorts: [products.category, order_items.total_sales desc 4]
    limit: 5000
    column_limit: 50
    row_total: right
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    advanced_vis_config: |-
      {
        chart: {
          type: 'streamgraph',
        },
      }
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_pivots:
      "$$$_row_total_$$$":
        is_entire_pivot_hidden: true
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
    listen:
      Address State: customers.address_state
      Order Date: orders.order_date
    row: 19
    col: 12
    width: 12
    height: 10
  - title: Average Order Size
    name: Average Order Size (2)
    model: cymbal_pets
    explore: order_items
    type: looker_column
    fields: [orders.order_month, order_items.average_sales]
    fill_fields: [orders.order_month]
    sorts: [orders.order_month desc]
    limit: 500
    column_limit: 50
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.average_sales,
            id: order_items.average_sales, name: Average Sales}], showLabels: true,
        showValues: true, maxValue: 51, minValue: 48.5, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    advanced_vis_config: |-
      {
        chart: {},
        caption: {
          text: 'Green if above the mean of the whole time period.',
          align: 'center',
          margin: 2,
          style: {
            fontSize: "1em",
            color: "#228B22"
          },
        },
        series: [{
          name: 'Average Sales',
          color: "#228B22",
          formatters: [{
            select: 'value < mean',
            style: {
              color: '#aaa'
            }
          }]
        }]
      }
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 29
    col: 0
    width: 24
    height: 9
  filters:
  - name: Address State
    title: Address State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cymbal_pets
    explore: order_items
    listens_to_filters: []
    field: customers.address_state
  - name: Order Date
    title: Order Date
    type: field_filter
    default_value: this year
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cymbal_pets
    explore: order_items
    listens_to_filters: []
    field: orders.order_date
