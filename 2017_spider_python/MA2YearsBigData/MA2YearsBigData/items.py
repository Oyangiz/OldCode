# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class Ma2YearsbigdataItem(scrapy.Item):
    maid = scrapy.Field()
    login_days = scrapy.Field()
    create_days = scrapy.Field()
    top100 = scrapy.Field()
    free_gold = scrapy.Field()
    lost = scrapy.Field()
    register_time = scrapy.Field()
    shipping = scrapy.Field()
    pass
