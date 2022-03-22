# GuessTheFlag

# Frontend Mentor - NFT preview card component solution

- Solution URL: [Git Repo](https://github.com/CrowdedAstronaut/front-end-mentor/tree/main/NFT-preview-card)
- Live Site URL: [Live Site](https://crowdedastronaut.github.io/advice-generator-app/)

This is a solution to the [Advice Generator App challenge on Frontend Mentor](https://github.com/CrowdedAstronaut/advice-generator-app).

## Table of contents

- [About this project](#about)
- [Screenshots](#screenshot)
- [Technologies](#technologies)
- [Learning Experience](#learning)
- [Author](#author)
- [Acknowledgments](#acknowledgments)

## About <a name="about"></a>

Guess The Flag is a native iPhone guessing game that helps users learn some of the many flags of the world. It is built entirely in SwiftUI.

·     Using stacks to arrange views
·     Colors and frames
·     Gradients
·     Buttons and images
·     Showing alert messages
·     Stacking up buttons
·     Showing the player's score with an alert
·     Styling the flags
·     Tracking the users score
·     Ending the game
·     Removing repeats

### The challenge

Users should be able to:

- View the optimal layout depending on their device's screen size
- See hover states for interactive elements

## Screenshots <a name="screenshot"></a>

### Mobile Preview

![Mobile Preview]()

### Desktop Preview

![Desktop Preview](https://github.com/CrowdedAstronaut/advice-generator-app/raw/main/images/advice-generator-desktop-preview.gif)

# Technologies <a name="technologies"></a>

<table>
  <tbody>
    <tr>
      <td>Front End Languages</td>
      <td>
        <img alt="HTML" src="https://img.shields.io/badge/html5%20-%23E34F26.svg?&style=for-the-badge&logo=html5&logoColor=white" />
        <img alt="CSS" src="https://img.shields.io/badge/css3%20-%231572B6.svg?&style=for-the-badge&logo=css3&logoColor=white" />
        <img alt="SASS" src="https://img.shields.io/badge/sass%20-%231572B6.svg?&style=for-the-badge&logo=sass&logoColor=pink" />
      </td>
    </tr>
      <td>Design</td>
      <td>
        <img alt="Figma" src="https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white" />
      </td>
    </tr>
    <tr>
      <td>Utilities</td>
      <td>
        <img alt="Git" src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" />
      </td>
    </tr>
    <tr>
      <td>Deployment</td>
      <td>
          <img alt="Github Pages" src="https://img.shields.io/badge/github-100000?style=for-the-badge&logo=github&logoColor=white"/>
      </td>
    </tr>
  </tbody>
</table>

<hr />
<br />

## What I learned <a name="learning"></a>

This exercise tested pixel perfect design and adjusting font-size, line-height, and line-spacing for the mobile vs. desktop views. It also tested the very basics of rendering data using the JS fetch API. There is a CSS hover state on the desktop view that I'm still figuring out!

I used an anchor tag as opposed to a button for the click
listener.

```html
<a
  role="button"
  tabindex="0"
  class="green-button"
  onclick="getAdvice()"
  aria-label="click here to generate some advice"
  target="_blank"
  rel="noopener"
></a>
```

I used scss color variables to make things easy to read and easy to change.

```scss
.proud-of-this-scss {
  $dark-blue: #202733;
  $dark-grayish-blue: #313a48;
  $grayish-blue: #4f5d74;
  $light-cyan: #cee3e9;
  $neon-green: #53ffaa;
}
```

I used the JS fetch API to GET the data from the advice API and return the data as JSON.

```js
const getAdvice = async () => {
  const result = await fetch(
    "https://api.adviceslip.com/advice"
  );
  const data = await result.json();
};
```

## Author <a name="author"></a>

- Website - [John Ross Phillips](https://www.johnrossphillips.com)
- Frontend Mentor - [@CrowdedAstronaut](https://www.frontendmentor.io/profile/CrowdedAstronaut)

## Acknowledgments <a name="acknowledgments"></a>
