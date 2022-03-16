<div id="top"></div>
<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Herenn/Docker-Python-Challenge">
    <img src="https://raw.githubusercontent.com/othneildrew/Best-README-Template/master/images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Docker Python Challenge</h3>

  <p align="center">
    Here is a Compose Challenge!
    <br />
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This is a Compose Challenge Project. 

Your team is working on a Python project. Due to local environment differences, developers are
observing different outputs from the same codebase. For a smooth development process this
shouldn’t be the case. You start preparing Docker containers to standardize development
environments and solve this issue.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

This is a list of programs to bootstrap your project.

* [Docker Compose](https://docs.docker.com/compose/)
* [MySQL](https://www.mysql.com/)
* [MySQL Connector/Python](https://dev.mysql.com/doc/connector-python/en/)
* [Python](https://www.python.org/)
* [Flask](https://palletsprojects.com/p/flask/)
* [Git](https://git-scm.com/)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

This project Readme is for Debian family systems(such Ubuntu) If your system is other then Debian Family you may get instrucations from <a href="https://docs.docker.com/compose/"></a>

### Prerequisites

You need basic knowledge of Docker, Docker-Compose, MySQL, Python and Flask.

### Installation


1. First you need Git to clone repository to your Localhost(or any host you are using)
   
   Lets update the apt package index first.

    ```sh
    sudo apt update
    ```
    Install Git

    ```sh
    sudo apt install git
    ```
    Clone Git Repository to your Host

    ```sh
    git clone https://github.com/Herenn/Docker-Python-Challenge.git
    ```
    If you check your root folder you may see "Docker-Python-Challenge" folder
    
    ```sh
    ls -la
    ```
2. We need to install Docker-Compose. To install Docker-Compose we need to install Docker Engine first.

    Before you install Docker Engine for the first time on a new host machine, you need to set up the Docker repository. Afterward, you can install and update Docker from the repository.
    Set up the repository
    Update the apt package index and install packages to allow apt to use a repository over HTTPS:
    ```sh
    sudo apt-get update
    sudo apt-get install \
      ca-certificates \
      curl \
      gnupg \
      lsb-release
    ```

    Add Docker’s official GPG key:
    ```sh
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    ```

    Use the following command to set up the stable repository. To add the nightly or test repository, add the word nightly or test (or both) after the word stable in the commands below. Learn about nightly and test channels.
    ```sh
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    ```

    Now it is time to Install Docker Engine

    Update the apt package index, and install the latest version of Docker Engine and containerd, or go to the next step to install a specific version:
    ```sh
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    ```

    Verify that Docker Engine is installed correctly by running the hello-world image.
    ```sh
    sudo docker run hello-world
    ```

    And it is time to Install Docker Compose

    Run this command to download the current stable release of Docker Compose:
    ```sh
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    ```
    Apply executable permissions to the binary:
    ```sh
    sudo chmod +x /usr/local/bin/docker-compose
    ```
    Test the installation.
    ```sh
    docker-compose --version
    ```


3. It is time run our Python project. Lets use up command to build Docker Images and Container. Note: You can use sudo command or you can give privilages to user.

    ```sh
    sudo docker-compose up -d
    ```
    We are using -d flag for detach mode so we can make changes to our application.py and see changes easily.

4. Now try if you can reach to your application with 3000 port. (ex. http://serveripaddres:3000 or localhost:3000)</p>

5. Next we will try if our project gets automaticly changes on our application.py file.

    When you reach to your application by browser you will see "Hello Devops 123, 1234!"
    Lets change it to something else
    ```sh
    vi app/application.py
    ```
    and change it to your name. For example "Hello John Doe 123, 1234!"

    Refresh your browser window after you change and quit application.py file.

    Now you will see "Hello John Doe 123, 1234!"


    *Important note* It is important to keep application.py file in another folder. If you keep file in your project root folder you won't see changes unless you docker-compose down and up again. Linux kernel reports file changes at directory level, thus this makes it important to mount the folder into the container



6. Thats all!

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Hasan Eren Çiftçi - [LinkedIn](https://www.linkedin.com/in/hasanerenciftci/) - erenciftci@hotmail.com.tr

Project Link: [Repository](https://github.com/Herenn/Docker-Python-Challenge)

<p align="right">(<a href="#top">back to top</a>)</p>