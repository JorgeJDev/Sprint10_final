import pytest
from flask import jsonify
import os

from app import create_app, db
from app.models import Data

@pytest.fixture
def client():
    app = create_app("testing")
    app.config.update({
        "SQLALCHEMY_DATABASE_URI": "postgresql://postgres:admin@localhost:5432/proyecto_final_DO"
    })

    with app.test_client() as client:
        with app.app_context():
            db.create_all()
        yield client
        with app.app_context():
            db.drop_all()

def test_insert_data(client):
    """Test inserting data."""
    response = client.post("/data", json={"name": "Test Data"})
    assert response.status_code == 200
    assert b"Data inserted successfully" in response.data

def test_get_all_data(client):
    """Test retrieving all data."""
    response = client.get("/data")
    assert response.status_code == 200
    data = jsonify(response.get_json())
    assert len(data.json) >= 0 

def test_delete_data(client):
    """Test deleting data."""
    response = client.post("/data", json={"name": "Test Data to Delete"})
    data_to_delete = Data.query.filter_by(name="Test Data to Delete").first()
    response = client.delete(f"/data/{data_to_delete.id}")
    assert response.status_code == 200
    assert b"Data deleted successfully" in response.data
