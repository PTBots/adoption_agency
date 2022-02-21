"""Models for adoption app."""

from flask_sqlalchemy import SQLAlchemy

DEFAULT_IMG = "https://media.istockphoto.com/vectors/cartoon-cat-and-dog-pets-vector-id971998184?k=20&m=971998184&s=612x612&w=0&h=zRsYFXkcS_DiFWi2gZ02TuvtZe0nuoFVVl9wFXN_Wq8="

db = SQLAlchemy()

class Pet(db.Model):
    """Adoptable pets"""

    __tablename__ = "pets"

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text, nullable=False)
    species = db.Column(db.Text, nullable=False)
    photo_url = db.Column(db.Text)
    age = db.Column(db.Integer)
    notes = db.Column(db.Text)
    available = db.Column(db.Boolean, nullable=False, default=True)

    def image_url(self):
        """Image for pet"""

        return self.photo_url or DEFAULT_IMG

def connect_db(app):

    db.app = app
    db.init_app(app)