</main><!-- /main -->

{% if maintance == false %}
    <!-- footer -->
    <footer class="hidden-print">
        {% if viewHelper.isPositionEmpty('footer-top-1') %}
            <section class="column-content one-column-content footer-wide-position footer-top-1-position">
                <div class="container">
                    {{ viewHelper.loadPosition('footer-top-1') }}
                </div>
            </section>
        {% endif %}

        {% if viewHelper.isPositionEmpty('footer-top-2') %}
            <section class="column-content one-column-content footer-wide-position footer-top-2-position">
                <div class="container">
                    {{ viewHelper.loadPosition('footer-top-2') }}
                </div>
            </section>
        {% endif %}

        {% set footerColsNumber = config.get('config_footer_cols_number',4) %}

        <section class="footer-row">
            <div class="container footer-col-container footer-cols-{{ footerColsNumber }}">
                {% include "common/footer/footer_row.tpl" %}
            </div>
        </section>

        {% if viewHelper.isPositionEmpty('footer-bottom-1') %}
            <section class="column-content one-column-content footer-wide-position footer-bottom-1-position">
                <div class="container">
                    {{ viewHelper.loadPosition('footer-bottom-1') }}
                </div>
            </section>
        {% endif %}

        {% if viewHelper.isPositionEmpty('footer-bottom-2') %}
            <section class="column-content one-column-content footer-wide-position footer-bottom-2-position">
                <div class="container">
                    {{ viewHelper.loadPosition('footer-bottom-2') }}
                </div>
            </section>
        {% endif %}

        <section class="footer-copyright">
            <div class="container">

                {% if isDeviceType('mobile') %}
                    <div class="mobile-footer visible-xs visible-sm">
                        <div class="row">
                            <div class="col-sm-6 col-xs-6">
                                {{ viewHelper.loadModule('module/languageselect') }}
                            </div>
                            <div class="col-sm-6 col-xs-6 text-right">
                                {{ viewHelper.loadModule('module/currenciesselect') }}
                            </div>
                        </div>
                    </div>
                {% endif %}

                {% if footer_seo_text %}
                    <div class="footer-seo">{{ footer_seo_text }}</div>
                {% endif %}

                <div class="copyright">
                    <div class="copyright-inner">
                        {{ footer_text }}
                        {{ switch_view }}
                    </div>
                </div>
            </div>
        </section>
    </footer><!-- /footer -->
{% endif %}

<div id="back-top" class="totop">
    <a href="{{ totop_url }}"><i class="fa fa-angle-up fa-2x"></i></a>
</div>

</div><!-- /page-wrap -->
{% jshrink %}
<script>
    $(document).ready(function () {
        /** Sticky header szükséges fájlok: stickyHeader.js **/
        new stickyHeader(115);
    });
    $(window).load(function () {
        /** Listás Rácsos elrendezés váltás szükséges fájlok: listGridLayout.js Sablon xml config: listgrid_enabled **/
        new ListGridLayout();

    });
</script>
{% endjshrink %}