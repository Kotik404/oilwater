/*
 * main.cpp
 *
 *  Created on: Mar 30, 2015
 *      Author: rainautumn
 */

#include <GL/glew.h>
#include <GLFW/glfw3.h>

#include "model.h"
#include "initbuff.hpp"
#include "camera.h"

#include <iostream>
using namespace std;

#define width 800
#define height 800

bool run = true;

GLFWwindow *window;

Model *_model;
Model *_model2;

Camera *_camera;

void test()
{
    glDisable(GL_DEPTH_TEST);
    _camera = new Camera();
    _camera->set_default_position(true);
    _camera->set_perspective(false);

    _model = new Model((char*)"res/load_sprite_inside");
    _model->_res_pos.position.init(0, 0, 1);
    _model->init_camera(_camera);
    init_buffers(&_model->_res_mod);


    _model2 = new Model((char*)"res/load_sprite_outside");
    _model2->_res_pos.angular_acceleration.init(0, 0, 0.001);
    _model2->init_camera(_camera);
    init_buffers(&_model2->_res_mod);
}

void display()
{
    glClearColor(1.0, 1.0, 1.0, 1.0);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	_model2->render();
	_model->render();
    glfwSwapBuffers(window);
    glfwPollEvents();
}

void KeyCall(GLFWwindow *window, int key, int scancode, int action, int mods)
{
    _camera->set_keymap(key, scancode, action, mods);
	if(key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
	{
		run = false;
		cout << "exit" << endl;
	}
}

void CursorPosCal(GLFWwindow *window, double xpos, double ypos)
{
    _camera->set_mouse(xpos, ypos);
    glfwSetCursorPos(window, width/2, height/2);
}

int main(int argc, char** argv)
{
    glfwInit();
    window = glfwCreateWindow(width, height, "oilwater", NULL, NULL);

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);
    glfwShowWindow(window);

    glewInit();
    test();

    glEnable(GL_DOUBLEBUFFER);
    glEnable(GL_DEPTH_TEST);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glEnable(GL_BLEND);
    glEnable(GL_ALPHA_TEST);
  // glDisable(GL_TEXTURE_2D);

    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
    glfwSetCursorPos(window, width/2, height/2);

    glfwSetKeyCallback(window, KeyCall);
    glfwSetCursorPosCallback(window, CursorPosCal);

    while(run)
        display();
    return 0;
}
