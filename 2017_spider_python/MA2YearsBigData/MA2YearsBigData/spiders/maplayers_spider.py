import scrapy
from scrapy.spiders import Spider
from scrapy.selector import Selector
from scrapy import Request
from MA2YearsBigData.MA2YearsBigData.items import Ma2YearsbigdataItem
import json
import re

class QuotesSpider(scrapy.Spider):
    name = "maplayers"

    def start_requests(self):
        for num in range(000000000, 100000000):
            yield scrapy.Request(url='https://XXX.XXXXX.com/ma/ma?callback=ma&id={0:0>9}'.format(num),
                                 callback=self.parse)

    def parse(self, response):
        sel = Selector(response)
        status = sel.re_first('status":(.*?),')

        jsonp = str(response.body)
        apijson = jsonp[jsonp.index("(") + 1: jsonp.rindex(")")]
        players = json.loads(apijson)

        item = Ma2YearsbigdataItem()
        item['maid'] = response.url.split("=")[-1]
        item['login_days'] = ''
        item['create_days'] = ''
        item['top100'] = ''
        item['free_gold'] = ''
        item['lost'] = ''
        item['register_time'] = ''
        item['shipping'] = ''


        if (int(status) == 0):

            maid = response.url.split("=")[-1]
            filename = 'player-%s.json' % maid
            with open(filename, 'wb') as f:
                # f.write(apijson)

                for player in players:
                    print(player['status'])

            self.log('Saved file %s' % filename)


