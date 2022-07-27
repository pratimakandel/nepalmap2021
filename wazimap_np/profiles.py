from wazimap.data.utils import get_session, merge_dicts, group_remainder
from wazimap.geo import geo_data

from wazimap_np import (
    demographics
)

# ensure tables are loaded

PROFILE_SECTIONS = (
    'demographics',
)

park_geo_codes = {'00000'}


def should_have_data(geo):
    return not (geo.geo_level == 'local' and geo.geo_code in park_geo_codes)


def get_census_profile(geo, _profile_name, _request):
    session = get_session()

    try:
        comparative_geos = geo_data.get_comparative_geos(geo)
        data = {}

        for section in PROFILE_SECTIONS:
            function_name = 'get_%s_profile' % section
            if function_name in globals():
                func = globals()[function_name]
                if should_have_data(geo):
                    data[section] = func(geo, session)
                    for comp_geo in comparative_geos:
                        try:
                            merge_dicts(data[section], func(comp_geo, session), comp_geo.geo_level)
                        except KeyError as e:
                            msg = "Error merging data into %s for section '%s' from %s: KeyError: %s" % (
                            geo.geoid, section, comp_geo.geoid, e)
                            # log.fatal(msg, exc_info=e)
                            raise ValueError(msg)
                else:
                    return {'area_has_no_data': True}
    finally:
        session.close()

    # if geo.geo_level != 'vdc':
    #     group_remainder(data['demographics']['language_distribution'], 10)
    #     group_remainder(data['demographics']['ethnic_distribution'], 10)

    return data


def get_demographics_profile(geo, session):
    return demographics.get_demographics_profile(geo, session)

