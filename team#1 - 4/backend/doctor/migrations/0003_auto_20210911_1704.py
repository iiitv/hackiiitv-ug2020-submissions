# Generated by Django 3.2.7 on 2021-09-11 11:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('doctor', '0002_auto_20210911_1658'),
    ]

    operations = [
        migrations.AddField(
            model_name='doctor',
            name='latitude',
            field=models.FloatField(null=True),
        ),
        migrations.AddField(
            model_name='doctor',
            name='longitude',
            field=models.FloatField(null=True),
        ),
    ]
