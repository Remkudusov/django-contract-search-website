# Generated by Django 3.2.5 on 2021-07-01 17:35

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('contracts', '0002_auto_20210701_2022'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Rate_accruals',
            new_name='Rate_accrual',
        ),
    ]
