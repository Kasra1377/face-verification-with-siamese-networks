# 🧑face-verification-with-siamese-networks

<p align="center">
  <img width="600" height="350" src="demo/Capture No.1.PNG">
</p>

<p align="center">
  <img width="600" height="350" src="demo/Capture No.2.PNG">
</p>

### 📝Description
---
In this project, we are going to implement an End-to-End Deep Learning/Machine Learning project. What this web application does is that, first it gets two gray scale faces(that were extracted by `Haar Cascade` face detection algorithm) from user. As soon as user clicks on the `Match` button, model recieves both faces, applies some image preprocessing actions on them and then passes these two images into the model itself. Take note that this specific siamese network recieves two images as inputs and then applies `Contrastive Loss` which we will discuss later on. In the next step, the model returns a number which is the `distance` between two faces. If the distance is greater or equal to a specific threshold (in this case the threshold is equal to `0.4`) then returns `Not Matched`; which means these two images **does not** belong to the same person. Otherwise it returns `Matched` which means these two faces belong to the same person.


### ⚡Face Recognition vs Face Detection vs Face Validation
---
Before we start off and dig into this project, frst we have to comprehend some terminologies and their differences in the face field.

First of all it has to be mentioned that face detection and face recognition are completely two different terminologies. With face detection, as its name suggests, we can detect and localize available face(s) in an image. Face detection algorithm tells you that where is the face exactly in the image. But on the other hand, a face recognition algorithm is a different algorithm. face recognizer gets the ROI of the image where the face is exactly located in that region and performs some actions on the ROI and then identifies the person that this face belongs to.We have various methods to detect and extract face(s) in the image, some of them are Haar Cascades , OpenCV's deep learning based face detector , HOG + Linear SVM and etc.

The next terminology is `Face Verification` which is completely different from previous terminologies. In face verification we select a face and then we compare it to one or more other faces. By doing this, we recieve two possible outputs from model, `same` or `different`. But in face recognition our output is the name or ground truth of the recognized face.

### 📐Siamese Networks
---
Siamese Networks are a type of neural network architectures that consists of two or more convolutional neural networks(CNNs) that work in parallel. We call these CNNs subnetworks. All of the subnetworks are identical. In addition to this, these subnetworkshave the same parameters, architecture and weights. Any parameter updates are **mirrored** across both subnetworks; meaning that if the weights of one of the subnetworks is updated then the weights of all of the other networks will be updated as well.

As mentioned, each subnetwork consists of a CNN network. Each CNN network recieves an gray scale face image with a shape of `(62, 47, 1)` with a batch size of 4. Then the input process into these `Conv2D => BN => ReLU => Pooling` sequence and then it is converterd into a `48-d` vector by a `GlobalMaxPooling` layer. After this process, these networks return the vectore in order to model be able to calculate the `euclidean distance` between vectors and do the further processings.

  For the loss function, `Contrastive Loss` is used. The reason is that in many ways this loss function outperforms and more accurate than `Binary Cross-Entropy`.The contrasive loss is calculated by the formula down below:

<p align="center">
  <img width="400" height="100" src="demo/contrastive_loss.png">
</p>

### 📉Project Results
---
The model has been created and put into a web app and you can see the performance and the output of the model down below:

![Screen Record No 2](https://user-images.githubusercontent.com/56585524/134305841-9062aa5a-2090-4800-84e9-20506faa9057.gif)
---
![Screen Record No 1](https://user-images.githubusercontent.com/56585524/134305957-83af21c6-a32c-489c-8824-c450a66de128.gif)

In addition to this, you can observe the loss function of the model for both training and test set:

<p align="center">
  <img width="500" height="300" src="output/plot.png">
</p>

### 🖥 Installation
---
The Code is written in Python 3.7.5. If you don't have Python installed you can find it [here](https://www.python.org/downloads/). If you are using a lower version of Python you can upgrade using the pip package, ensuring you have the latest version of pip. To install the required packages and libraries, run this command in the project directory after cloning the repository:
```
git clone git@github.com:Kasra1377/lbp-face-recognition.git
```
or
```
git clone https://github.com/Kasra1377/lbp-face-recognition.git
```
After you cloned this repository, you have to downloadand install the Anaconda. You can find the download link from this [link](https://www.anaconda.com/products/individual). After the installation, open the Anaconda Prompt and type the code down below:
```
conda create -n verification python=3.7
```
This command creates a virtual env with a name of `verification`. Note that you can choose your own arbitrary name for virtual enviroment. After virtual enviroment was created, via Anaconda Prompt switch to the directory of the project folder and then type:

```
conda activate verification
```
This command activates your own virtual enviroment that you have just created. In order to install all of the libraries that used in this project, you have to type:

```
conda install file requirements.txt
```

By doing this and downloading all of the required packages, you are ready to run this project on your local computer.

To run the web app on your computer, first open `app.py` python file by your own IDE and switch the current virtual env of your IDE into your newly created virtual enviroment. After that open your Git Bash and type the following commands respectively:

```
export FLASK_APP=app.py
```

```
export FLASK_ENV=development
```

```
FLASK_DEBUG=1 flask run
```

Now the web app is openedin your browser locally. You can use the available cropped faces in `samples` folder in order to upload and match the faces.

### 🛠Technologies Used
---
**IDE**:  ![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)


**Language(s):**  ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

**Libraries:**  ![OpenCV](https://img.shields.io/badge/opencv-%23white.svg?style=for-the-badge&logo=opencv&logoColor=white) ![Keras](https://img.shields.io/badge/Keras-%23D00000.svg?style=for-the-badge&logo=Keras&logoColor=white) ![scikit-learn](https://img.shields.io/badge/scikit--learn-%23F7931E.svg?style=for-the-badge&logo=scikit-learn&logoColor=white) ![TensorFlow](https://img.shields.io/badge/TensorFlow-%23FF6F00.svg?style=for-the-badge&logo=TensorFlow&logoColor=white)  ![NumPy](https://img.shields.io/badge/numpy-%23013243.svg?style=for-the-badge&logo=numpy&logoColor=white)

**Front-End:**  ![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white) ![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)  ![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)

**Backend:**  ![Flask](https://img.shields.io/badge/flask-%23000.svg?style=for-the-badge&logo=flask&logoColor=white)

**Others:** ![Jupyter Notebook](https://img.shields.io/badge/jupyter-%23FA0F00.svg?style=for-the-badge&logo=jupyter&logoColor=white)

### ❌Bugs & Issues
---
If you ever encountered any bugs or any technical issues in this projects you can report it by `issues` section of this repository or you can contact me by my email address. 

### 👥Contributers
---
Kasra1377

### 🔻References
---
[Building image pairs for siamese networks with Python](https://www.pyimagesearch.com/2020/11/23/building-image-pairs-for-siamese-networks-with-python/)

[Contrastive Loss for Siamese Networks with Keras and TensorFlow](https://www.pyimagesearch.com/2021/01/18/contrastive-loss-for-siamese-networks-with-keras-and-tensorflow/)

