<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <h3 align="center">Laravel API</h3>

  <p align="center">
    A kickstart project to learn on how to create api in Laravel CakePHP framework.
  </p>
</div>

### Built With

* [![Laravel][Laravel.com]][Laravel-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

To set up this project locally, you can follow the guideline below:

### Prerequisites

Please install the software listed below.
* Laragon

### Installation

1. Clone the repo into `C:/Laragon/WWW` folder
   ```sh
   git clone https://github.com/nasuhasri/laravelapi.git
   ```
2. Copy and paste `env.example` file in the same destination.
3. Change the file to be `.env` only.
4. Rename your database to any name you want.
5. To make it easy, you can rename the database to `laravelapi`.
6. Create the database in laragon using the same name.
7. Import the `laravelapi.sql` file in database in the laragon.
8. Copy and paste this link `http://localhost/laravelapi/public/api/listAll` to access the api.
9. You should get the interface as below.

![Laravel API Screen Shot][laravelapi-screenshot]

10. To get the list of api in this project, you can go to `routes/api.php` or you can simply type this command in your terminal:
    ```sh
    public artisan route:list
    ```
11. You should get interface as below:

![Laravel API Route Screen Shot][laravelapi-route]


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo_name/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo_name.svg?style=for-the-badge
[forks-url]: https://github.com/github_username/repo_name/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo_name.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/repo_name/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo_name.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/repo_name/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo_name.svg?style=for-the-badge
[license-url]: https://github.com/github_username/repo_name/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username
[laravelapi-screenshot]: /public/images/screenshot.jpg
[laravelapi-route]: /public/images/route.jpg
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com
[Cakephp.com]: https://img.shields.io/badge/cakephp-red?style=for-the-badge&logo=cakephp&logoColor=white
[Cakephp-url]: https://cakephp.org/