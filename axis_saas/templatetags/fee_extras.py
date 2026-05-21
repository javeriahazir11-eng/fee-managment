from django import template
register = template.Library()

@register.filter
def map_attribute(lst, attr):
    if not lst:
        return []
    return [getattr(item, attr, None) for item in lst]
