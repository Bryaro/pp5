# Generated by Django 5.1.4 on 2024-12-21 21:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0005_alter_productimage_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='sold_out',
            field=models.BooleanField(default=False),
        ),
    ]
