from flask import Flask, request, render_template
from werkzeug.utils import secure_filename
from tensorflow.keras.models import load_model
import numpy as np
import cv2
import os

app =Flask(__name__ , template_folder="templates")

MODEL_PATH="output/siamese-model"
model = load_model(MODEL_PATH, compile=False)

def preprocess_image(image):
    image = cv2.imread(image)
    image = cv2.cvtColor(image , cv2.COLOR_BGR2GRAY)
    # image = cv2.resize(image, (47, 62))
    image = np.expand_dims(image, axis=[0 ,-1])
    image = image / 255.0
    print("Image shape:", image.shape)
    return image

def model_predict(first_img, second_img, model):
    imageA = preprocess_image(first_img)
    imageB = preprocess_image(second_img)

    preds = model.predict([imageA, imageB])
    proba = preds[0][0] 
    print("Distance: ", proba)
    return proba

# @app.route("/" , methods=["POST"])
# def first_image():
#     if request.method == 'POST':
#         print("1111")
#         first_img = request.files["first-img"]
#         first_img = preprocess_image(first_img)
#         print("Input shape: ",first_img)
#         return first_img


# @app.route("/" , methods=["POST"])
# def second_image():
#     if request.method == 'POST':
#         second_img = request.files["second-img"]
#         return second_img
    

@app.route("/" , methods=["GET" , "POST"])
def home():
    proba = 0
    if request.method == 'POST':
        # Get the image from post request
        first_img = request.files["first-img"]
        second_img = request.files["second-img"]

        basepath = os.path.dirname(__file__)

        first_img_path = os.path.join(basepath, 'uploads', secure_filename(first_img.filename))
        second_img_path = os.path.join(basepath, 'uploads', secure_filename(second_img.filename))
        
        first_img.save(first_img_path)
        second_img.save(second_img_path)

        print("Input shape: ",first_img_path)

        # first_img = preprocess_image(first_img_path)
        # second_img = preprocess_image(second_img_path)
        print("ALMOOOST THERE!!!!!")
        proba = model_predict(first_img_path, second_img_path, model)
        print("Result : ", proba)

    return render_template("template.html" , proba = proba)

if __name__=="__main__":
    app.run(debug=True)