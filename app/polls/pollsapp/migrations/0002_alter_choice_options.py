# Generated by Django 3.2.18 on 2023-04-07 19:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('pollsapp', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='choice',
            options={'ordering': ['id']},
        ),
    ]