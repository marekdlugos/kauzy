<h1 align="center">
  <!-- <br> -->
  <!-- Space for future logo -->
  <!-- <br> -->
  Kauzy
  <br>
</h1>

<h4 align="center">A web app to list public figures and cases connected with them.</h4>

<p align="center">
  <a href="#help-needed">Help Needed</a> •
  <a href="#key-features">Key Features</a> •
  <a href="#technology-stack">Technology Stack</a> •
  <a href="#getting-started">Getting Started</a> •
  <a href="#license">License</a>
</p>

![screenshot](https://raw.githubusercontent.com/marekdlugos/kauzy/master/kauzy.png)

The parliament elections are held in my home country, Slovakia, every four years and there is a lot of bad stuff that politicians and other public figures have done. It was that much that I have easily lost track of it. Hence, I have decided to create this tool that would help people like me search for public figures, and see what cases they might be connected to so that I can make informed decisions.

My vision for this project is very simple - create an environment for someone (either organization, co-author, activist) that would fill up the app with data. I have no intentions of writing very own content, instead, I would love the app to link from cases screen to various media from the country.

**Goals:**
1. Create an app that every country could use to increase the awareness of its citizens.
2. Keep this solution apolitical.

## Help Needed

Because I have more stuff on the plate to figure out, I would appreciate any help with coding.

## Key Features

- Manage the list of public figures (e.g. politicians).
- Manage the list of cases. Assign public figures to the cases.
- Attach internet links to the cases so that people can read more.

## Technology Stack

- Ruby
- Ruby on Rails
- PostgreSQL
- Tailwindcss
- Webpacker
- RSpec

## Getting started

The app is a standard Ruby on Rails application using PostgreSQL as database. The commands you will probably find the most useful are:

### MacOS

1. Clone the repository: `git clone https://github.com/marekdlugos/kauzy.git`
2. Install PostgreSQL: `brew install postgresql`
3. Start PostgreSQL: `brew services start postgresql`
4. Create the database: `rails db:create`
5. Create the tables: `rails db:migrate`
6. Seed the database with basic data: `rails db:seed` 
7. Start the server: `rails s`

## License

MIT

---

> [marekdlugos.com](https://www.marekdlugos.com/) &nbsp;&middot;&nbsp;
> GitHub [@marekdlugos](https://github.com/marekdlugos/) &nbsp;&middot;&nbsp;
> Twitter [@MarekDlugos](https://twitter.com/MarekDlugos)
