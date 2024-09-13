from faker import Faker
import random

fake = Faker()

def create_fake_product():
    return {
        'name': fake.word(),
        'category': fake.word(),
        'availability': random.choice(['in_stock', 'out_of_stock']),
        'price': round(random.uniform(5.0, 100.0), 2)
    }
