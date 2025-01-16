# bioe245-tutorial

This is a tutorial for the BioE245: Machine Learning for Medical Imaging class at UCSF. Created by [Ilina Bhaya Grossman](https://www.ilinabhayagrossman.com) in Winter 2025.

## What this tutorial covers

This tutorial is meant to introduce students to the basic functions, syntax, and capabilities of Python and Matlab for the purposes of this class. It is not meant to be a comprehensive guide to either language, but rather a starting point for students who are new to programming. There are two folders in this repository: `python` and `matlab`. Each folder contains a notebook that covers the basics of the language by working with a real human ECoG dataset documented in this [tutorial](https://github.com/ChangLabUcsf/changlabXenvision) written by members of the [Chang lab](https://changlab.ucsf.edu/) at UCSF.
 

The `python` folder contains:
- `PythonTutorial.ipynb`: A Jupyter notebook with examples and exercises for Python. This notebook can be run using a Python kernel for Jupyter notebooks or using Binder (see below).

The `matlab` folder contains:

- `MatlabTutorial.m`: A `.m` file with the same examples and exercises that can be run using the Matlab GUI.
- `MatlabTutorialLiveScript.m`: A Matlab Live Script file that can be run in Matlab 2020+ using the Live Editor. 
- `MatlabTutorial.ipynb`: A Jupyter notebook with examples and exercises for Matlab. See below for how to run this notebook. 

## How to interact with this tutorial

For both Python and Matlab, there are several ways to interact with this tutorial. There are no serious disadvantages to using one method over another, so choose the one that works best for you.

### Python

1. The easiest way to interact with this tutorial is to use Binder. Launch an interactive version of the Python tutorial in your web browser by clicking the icon: [![Binder]](https://mybinder.org/v2/gh/ilinabg/bioe245-tutorial/186735713a7cb983cf1e473e528d1e26f06f98c9?urlpath=lab%2Ftree%2Fpython%2FPythonTutorial.ipynb). Please note that to save your work, you will need to download the Jupyter notebook to your local machine.

2. Alternatively, you can clone this repository to your local machine and run the Jupyter notebooks using Jupyter Lab or Jupyter Notebook. Please see this tutorial on how to [install Jupyter](https://jupyter.org/install). You will additionally need to install the following Python packages into your environment:
    - numpy
    - matplotlib
    - scikit-learn
    - seaborn
    - scipy

### Matlab

To run the Matlab examples and exercises, please note that you will need an active Matlab license.

1. To run Matlab on your local machine, you can clone this repository and open the `matlab` folder in the Matlab GUI. You can run the `MatlabTutorial.m` file in the Matlab GUI, or you can run the `MatlabTutorialLiveScript.m` file in Matlab 2024 using the Live Editor.

2. If you do not have Matlab installed on your local machine, you can use the [online Matlab environment](https://matlab.mathworks.com/). Once you sign into your Matlab account, you can upload the `MatlabTutorial.m` file or the `MatlabTutorialLiveScript.m` file to the online environment and run it there.

3. (Not recommended for in class session) If you would like to run both the Python and Matlab tutorials on your local machine on the *same platform*, you can clone this repository and open the Matlab `.ipynb` as a Jupyter notebook using the [Matlab kernel for Jupyter notebooks](https://github.com/mathworks/jupyter-matlab-proxy?tab=readme-ov-file#requirements).