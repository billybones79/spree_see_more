
  Deface::Override.new(:virtual_path=>'spree/shared/_products_list',
                       :name => 'add_see_more_to_products_list_in_shared',
                       :insert_bottom =>"#products",
                       :text         =>"    <div class='button-outline centered no-margin-top load-more' id='more_products'>
        <%= link_to_next_page products, t('spree.product_list.see_more'), params: params, remote: true,  data: {disable_with: \"<i class='fa fa-refresh fa-spin'></i> ...\".html_safe } %>
      </div>")