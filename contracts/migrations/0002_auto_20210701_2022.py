# Generated by Django 3.2.5 on 2021-07-01 17:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contracts', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='rate_accruals',
            old_name='rate',
            new_name='rate_contract',
        ),
        migrations.AlterField(
            model_name='money_admission',
            name='date',
            field=models.DateField(),
        ),
        migrations.AlterField(
            model_name='rate_accruals',
            name='date',
            field=models.DateField(),
        ),
    ]