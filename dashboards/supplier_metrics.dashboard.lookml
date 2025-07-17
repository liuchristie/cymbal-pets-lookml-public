- dashboard: supplier_metrics
  title: Cymbal Pets Supplier Metrics
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: ygnvURNgG1D9fUaMEQs4PZ
  elements:
  - title: Average Lead Time Per Supplier
    name: Average Lead Time Per Supplier
    model: cymbal_pets
    explore: purchases
    type: looker_grid
    fields: [purchases.average_lead_time, suppliers.supplier_name]
    sorts: [purchases.average_lead_time]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
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
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      purchases.average_lead_time:
        is_active: false
        palette:
          palette_id: google-sequential-0
          collection_id: google
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0,
          options: {steps: 5, reverse: true}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    map: auto
    map_projection: ''
    quantize_colors: false
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
    listen:
      Purchase Order Date: purchases.purchase_order_date
      Supplier Name: suppliers.supplier_name
      Category: products.category
      Distribution Center State: distribution_centers.address_state
      Supplier State: suppliers.address_state
    row: 7
    col: 0
    width: 12
    height: 7
  - title: Lead Time by Distribution Center State
    name: Lead Time by Distribution Center State
    model: cymbal_pets
    explore: purchases
    type: looker_google_map
    fields: [purchases.average_lead_time, distribution_centers.address_state]
    sorts: [purchases.average_lead_time]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map: auto
    map_projection: ''
    quantize_colors: false
    colors: [green]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      purchases.average_lead_time:
        is_active: false
        palette:
          palette_id: google-sequential-0
          collection_id: google
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0,
          options: {steps: 5, reverse: true}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    listen:
      Purchase Order Date: purchases.purchase_order_date
      Supplier Name: suppliers.supplier_name
      Category: products.category
      Distribution Center State: distribution_centers.address_state
      Supplier State: suppliers.address_state
    row: 7
    col: 12
    width: 12
    height: 7
  - title: Purchase Orders by Supplier State
    name: Purchase Orders by Supplier State
    model: cymbal_pets
    explore: purchases
    type: looker_google_map
    fields: [purchases.count, suppliers.address_state]
    sorts: [purchases.count desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map: auto
    map_projection: ''
    colors: [green]
    quantize_colors: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      purchases.average_lead_time:
        is_active: false
        palette:
          palette_id: google-sequential-0
          collection_id: google
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0,
          options: {steps: 5, reverse: true}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    listen:
      Purchase Order Date: purchases.purchase_order_date
      Supplier Name: suppliers.supplier_name
      Category: products.category
      Distribution Center State: distribution_centers.address_state
      Supplier State: suppliers.address_state
    row: 0
    col: 12
    width: 12
    height: 7
  - title: Latest Purchase Orders
    name: Latest Purchase Orders
    model: cymbal_pets
    explore: purchases
    type: looker_grid
    fields: [products.product_name, products.category, purchases.purchase_order_date,
      purchases.purchase_delivery_date, purchases.days_delivery_time, purchases.total_purchase_order_sales,
      suppliers.supplier_name, distribution_centers.distribution_center_name]
    sorts: [purchases.purchase_order_date desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: true
    minimum_column_width: 75
    series_cell_visualizations:
      purchases.total_purchase_order_sales:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Purchase Order Date: purchases.purchase_order_date
      Supplier Name: suppliers.supplier_name
      Category: products.category
      Distribution Center State: distribution_centers.address_state
      Supplier State: suppliers.address_state
    row: 14
    col: 0
    width: 24
    height: 8
  - title: Lead Time and Purchase Orders By Date
    name: Lead Time and Purchase Orders By Date
    model: cymbal_pets
    explore: purchases
    type: looker_line
    fields: [purchases.average_lead_time, purchases.purchase_order_date, purchases.total_purchase_order_sales]
    fill_fields: [purchases.purchase_order_date]
    sorts: [purchases.purchase_order_date desc]
    limit: 500
    column_limit: 50
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: purchases.average_lead_time,
            id: purchases.average_lead_time, name: Average lead time in days}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: purchases.total_purchase_order_sales,
            id: purchases.total_purchase_order_sales, name: Total Purchase Order Sales}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      purchases.total_purchase_order_sales: column
    series_colors:
      purchases.average_lead_time: "#34A853"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Purchase Order Date: purchases.purchase_order_date
      Supplier Name: suppliers.supplier_name
      Category: products.category
      Distribution Center State: distribution_centers.address_state
      Supplier State: suppliers.address_state
    row: 0
    col: 0
    width: 12
    height: 7
  filters:
  - name: Purchase Order Date
    title: Purchase Order Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cymbal_pets
    explore: purchases
    listens_to_filters: []
    field: purchases.purchase_order_date
  - name: Supplier Name
    title: Supplier Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cymbal_pets
    explore: purchases
    listens_to_filters: []
    field: suppliers.supplier_name
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cymbal_pets
    explore: purchases
    listens_to_filters: []
    field: products.category
  - name: Distribution Center State
    title: Distribution Center State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cymbal_pets
    explore: purchases
    listens_to_filters: []
    field: distribution_centers.address_state
  - name: Supplier State
    title: Supplier State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cymbal_pets
    explore: purchases
    listens_to_filters: []
    field: suppliers.address_state
