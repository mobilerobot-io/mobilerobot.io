---
title: The Making of The Mobile Robot Website 
date: 2019-02-03
  This document goes into a little detail on how this webiste was
  built, how it is managed and deployed website is managed and built. 
category: software
tags:
  - ansible
  - nginx
  - hugo
  - digital ocean
---

Talk about how ansible was used to update this website.  Terraform to
provision the virtual host, ansible to manage configurations.

Mobile Robot Website is:

- Markdown for authoring documents
- [Github for version control and deployment]
  (http://github.com/mobilerobot-io/mobilerobot.io)
- NGINX is the web server
- Hugo is the Static Site Generator
- HAProxy is the LB 
- Linux is the server
- Digital Ocean Provides the serverj
- Digital Ocean Provides the CDN

NGINX and Static sites generated with Hugo
