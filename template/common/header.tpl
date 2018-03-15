{% if maintance == false %}
    {{ render(controller('module/mobile_menu')) }}
{% endif %}
{% set searchHtml %}
    {{ viewHelper.loadModule('module/search') }}
{% endset %}
{% set searchDropdownParentClass = "" %}
<!-- page-wrap -->
<div class="page-wrap">
    {{ shop_warning }}

    <div id="SR_scrollTop"></div>

    <!-- header -->
    <header>
        {% if maintance == false %}
            <nav class="navbar header-navbar hidden-xs hidden-sm">
                <div class="container">
                    {% if isDeviceType('tablet') or isDeviceType('desktop') %}
                        {{ viewHelper.loadModule('module/languageselect') }}
                        {{ viewHelper.loadModule('module/currenciesselect') }}
                    {% endif %}
                    <div class="header-topmenu">
                        <div id="topmenu-nav">
                            {{ viewHelper.loadModule('module/headerlinks') }}
                            {{ viewHelper.loadModule('module/login') }}
                        </div>
                    </div>
                </div>
            </nav>
            <div class="header-middle">
                <div class="container header-container">
                    <div class="header-middle-row">
                        <div class="header-middle-left">
                            {{ viewHelper.loadModule('module/logo') }}
                        </div>
                        <div class="header-middle-right">
                            <div class="row header-middle-right-row">
                                {% set showPhone = config.get('config_show_header_phone') %}
                                {% set showSearchCategory = config.get('config_quicksearch_category_select') %}
                                {% set headerPhone %}
                                    <div class="header-phone"><i class="fa fa-phone fa-rotate-90"></i> {{phone}}</div>
                                {% endset %}

                                {% set dropdownSearch = config.get('config_search_dropdown',0) %}
                                {% if (dropdownSearch == 1) %}
                                    {% set searchDropdownParentClass = " search-dropdown-parent-wrapper" %}
                                    {% set searchHtml %}
                                        <div class="search-dropdown-wrapper dropdown">
                                            <button id="search-dropdown-btn" class="btn btn-default search-dropdown-btn" type="button"><i class="fa fa-search"></i></button>
                                            <div class="search-dropdown-module dropdown-click-menu">
                                                {{ viewHelper.loadModule('module/search') }}
                                            </div>
                                        </div>
                                        <script>
                                            $(document).ready(function(){
                                                $("#search-dropdown-btn").click(function(){
                                                    $(this).parent().toggleClass("active");
                                                });
                                                $('.search-dropdown-parent-wrapper').parent().addClass('search-dropdown-on');
                                            });
                                        </script>
                                    {% endset %}
                                {% endif %}

                                {# .header-col ford�tott sorrend a float: right miatt #}
                                <div class="header-col header-col-cart">
                                    {{ viewHelper.loadModule('module/cart') }}
                                </div>
                                {% if (showPhone == 1 and showSearchCategory == 0) %}
                                    <div class="col-md-3 header-col header-col-phone">
                                        {{ headerPhone }}
                                    </div>
                                    <div class="col-md-4 header-col header-col-search{{ searchDropdownParentClass }}">
                                        {{ searchHtml }}
                                    </div>
                                {% elseif (showPhone == 1 and showSearchCategory == 1) %}
                                    <div class="col-md-3 header-col header-col-phone">
                                        {{ headerPhone }}
                                    </div>
                                    <div class="col-md-5 header-col header-col-search{{ searchDropdownParentClass }}">
                                        {{ searchHtml }}
                                    </div>
                                {% elseif (showPhone == 0) %}
                                    <div class="col-md-7 header-col header-col-search{{ searchDropdownParentClass }}">
                                        {{ searchHtml }}
                                    </div>
                                {% endif %}
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="header-categories-wrapper sticky-head hidden-xs hidden-sm">
                <div class="container header-categories">
                    {{ viewHelper.loadModule('module/category') }}
                </div>
            </div>
        {% else %}
            <div class="container">
                <div class="text-center">
                    {{ viewHelper.loadModule('module/logo') }}
                </div>
            </div>
        {% endif %}
    </header>
    <!-- /header -->

    {% if isFrontPage and maintance == false %}
        {{ viewHelper.loadPosition('scroller') }}
    {% endif %}

    {{ viewHelper.loadPosition('pathway-top') }}

    <!-- main -->
    <main>
        {% if common_error %}
        <div class="warning">{{ common_error }}</div>
        {% endif %}
        <div id="mobile-filter-position"></div>