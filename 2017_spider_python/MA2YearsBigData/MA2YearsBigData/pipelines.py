# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html

import boto3

class Ma2YearsbigdataPipeline(object):
    def process_item(self, item, spider):
        client = boto3.client('dynamodb')
        client.put_item(item)
        return item
