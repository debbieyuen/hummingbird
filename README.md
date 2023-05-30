# Hummingbird (Formerly Euphemia)

<img width="2048" alt="Screen Shot 2023-03-29 at 6 41 58 AM" src="https://user-images.githubusercontent.com/31296177/228558278-40c8560e-ff85-45ee-84ff-ff94a02ae6be.png">
![IMG_0031](https://github.com/debbieyuen/hummingbird/assets/31296177/1e293021-66f6-45f1-8bf6-bd8afac91cc1)

The Magic School Bus is a web application compatible with Macs and iPads. During my elementary school years, the TV Series, *The Magic School Bus*, brought excitement to science education and sparked my imagination. In this assignment, I bring back my childhood memories of watching Miss. Frizzle and her class launch into space to discover the unknown. In my prototype, drivers begin their launch to outer space, specifically to the stars, via **drive** and **reverse** modes. In reference to the “reach for the stars” idiom, drivers set goals to reach their destinations, the stars. Drivers are also prompted for today’s adventure destination via the input search bar with, “Today on the Magic School Bus, we are going…” written over it. 

The Magic School Bus prototype questions what it means for a driver to get in, drive, and arrive in a Tesla. Can Teslas leave behind a legacy of positivity and inspiration by challenging what “just a drive” is and helping riders discover meaning in their life adventures? 

The next time you get in your Tesla, swipe up into **drive**, and ask yourself am I finding joy in the journey and arrival of my next adventure? Do I even see it as an adventure? I hope you look forward to **parking**, because there is something up ahead that’s amazing! 


### Links
  * Live Website: https://debbieyuen.github.io/magical/
  * Video Demo: https://www.youtube.com/watch?v=XTSfzfHcBxM

### Website Interactions
| Action | Element | Description |
| --- | --- | --- |
| Drag yellow car | 🚌 | Swipe down to **reverse** and swipe up to **drive** |
| Yellow car swipe down | 🚌 | Opens up rear view cameras (your webcam in this prototype) |
| Yellow car swipe up | 🚌 | Displays navigation and music side panels |
| Press location button | 🎯 | Prompts you for your location to display your location on map |
| Tap pink MSB image | 🎆 | Plays the Magic School Bus theme song |
| Pinch map| 🗺 | Zoom in and out of navigation map |
| Type in search bar | 🔍 | Search bar will not populate information |
| Allow permissions| ✅ | Allow app to access your location and webcam |

### Magic School Bus Gears
| Gears | Symbol | Description |
| --- | --- | --- |
| `P`: Park |  ⭐️ | Life is a series of destinations. When and where can you park your car at your destination? Maybe choose some that bring joy, meaning, and fulfillment.  |
| `R`: Reverse |  ⬇️ |  Reverse is a direction in life. It is neither bad nor good unless you make it out to be so. Reverse is bringing you closer to home or your destination.  |
| `N`: Neutral |  🌎 | Earth. An important place full of mysteries. |
| `D`: Drive |  ⬆️ | Your journey to the stars. Eventually, you want to park. |

<img width="2048" alt="Screen Shot 2023-03-29 at 6 48 15 AM" src="https://user-images.githubusercontent.com/31296177/228559116-f68dde3d-69f7-4c27-868b-8554aa9ab37d.png">

## Requirements
  * Greensock GSAP3 (Shockingly)
  * Mapbox GL JS and token
  * Flask 1.1.2
  * Werkzeug 1.0.1
  * Python 3.8.8
  * NodeJS v18.8.1


## Project Setup
Clone the repo
```bash
$ git clone https://github.com/debbieyuen/magical.git
```

Make sure you have NPM. If not installed, install the latest version of NPM.
```bash
$ npm install -g npm
```

Check to make sure it was installed successfully.
```bash
$ npm -v
$ node -v
```

Set up GSAP by adding the following to your .npmrc file either for your profile ($ vim ~/.npmrc) or at the root of your project.
```bash
$ //npm.greensock.com/:_authToken=b7bce164-5019-4e5d-98b5-70eba6754ec4@gsap:registry=https://npm.greensock.com
```

The first time you install GSAP to a project, install via.
```bash
$ npm install gsap@npm:@gsap/shockingly
```

You may also install all free and bonus plugins by downloading the zip file and installing via the following command.
```bash
$ npm install ./gsap-bonsu.tgz
```

Or install GSAP without bonus plugins. 
```bash
$ npm install gsap
```

Install Flask
```bash
$ pip install flask
```

In Visual Studio Code, install the Live Server Extension to quickly run the website locally on your machine. Else, run the program in your terminal.
Clone the repo
```bash
$ open index.html
```
