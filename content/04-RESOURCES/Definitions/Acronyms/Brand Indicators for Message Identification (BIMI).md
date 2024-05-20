---
creation_date: 2024-05-02
modification_date: 2024-05-02
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Acronym
  - Topic/Dev
  - Topic/Dev/IT
  - Topic/Dev/Domain
  - Topic/Business/Brand
  - Topic/Productivity/Email
  - Status/WIP
aliases:
  - BIMI
  - Brand Indicators for Message Identification
publish: true
permalink:
description:
image:
cssclasses:
---

# Brand Indicators for Message Identification (BIMI)

> [!SOURCE] Sources:
> - *[Google Workspace Help](https://apps.google.com/supportwidget/articlehome?hl=en&article_url=https%3A%2F%2Fsupport.google.com%2Fa%2Fanswer%2F10911321%3Fhl%3Den&assistant_id=generic-unu&product_context=10911321&product_name=UnuFlow&trigger_context=a)*
> - *[What is a BIMI Record? (mxtoolbox.com)](https://mxtoolbox.com/dmarc/details/bimi-record/what-is-a-bimi-record)*
> - *[How To Set Up BIMI (and Why It’s Important in 2023) (beehiiv.com)](https://blog.beehiiv.com/p/set-up-bmi-for-brand-recognition?utm_source_platform=google_search&utm_creative_format=dynamic&utm_marketing_tactic=prospecting&utm_term=&utm_campaign=tof-search-dynamic-blog&utm_source=google&utm_medium=ppc&utm_content=666824866279&hsa_acc=2054248193&hsa_cam=19108065112&hsa_grp=151034897905&hsa_ad=666824866279&hsa_src=g&hsa_tgt=dsa-2176011282901&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gad_source=1&gclid=CjwKCAjw88yxBhBWEiwA7cm6peZUGTUcXzuTs7bx8md4xvhALqjBhj9Nv3x2hQKsq9McV4AfFXOVdBoCuX0QAvD_BwE)*

![](https://i.imgur.com/MtFeKLm.png)


```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> *Brand Indicators for Message Identification (BIMI)* is an email authentication protocol that allows companies to display their brand logo in the email inbox of their recipients. BIMI is designed to increase brand recognition, email deliverability, and email security.

BIMI adds your brand logo to outgoing email messages.

It is configured via a `BIMI` `TXT` [[Domain Name Server or System (DNS)|DNS]] Record.

Some email providers support BIMI with a `TXT` record that refers to a [[Scalable Vector Graphics (SVG)]] image file only. However, to display BIMI logos in [[Tool - Gmail|Gmail]], you must use a `TXT` record that refers to a [[Privacy Enhanced Mail (PEM)]] file. The [[PEM]] file includes your logo.

Simply put, BIMI allows you to show off a trusted sender logo with all of your emails. The primal purpose is to verify that you are who you say you are—not a scammer or spammer. BIMI works alongside three other important methods for verifying your sender information:

- Domain-based Message Authentication, Reporting, and Conformance (DMARC)
    
- Domain Keys Identified Mail (DKIM)
    
- Sender Policy Framework (SPF).
    

Don’t worry too much about those three jargony terms yet. We’ll cover how they tie into BIMI in just a little bit, but for now, let’s look a little closer at BIMI.

BIMI is one of the latest emerging technologies in online security that helps authenticate who you are as an email sender. The main benefit for you as a newsletter publisher is that it essentially helps you build trust with your subscribers.

When you use BIMI, it helps protect your email domain from being used by hackers to send sketchy emails. With BIMI implemented, your logo always shows up with your emails, so recipients know the email is truly coming from you.

## Setup DNS Records

1. Create BIMI DNS TXT Record:

> [!IMPORTANT] Important:
> In BIMI syntax, the number **1**, the uppercase letter **i (I)**, and the lowercase letter **L (l)** all appear similar. Be aware of this when creating the [[Domain Name Server or System (DNS)|DNS]] `TXT` record.

For a [[PEM]] file:

```plaintext
v=BIMI1;l=;a=https://domain.com/brand/certificate.pem
```

For a [[SVG]] file:

```plaintext
v=BIMI1;l=https://domain.com/brand/bimi-logo.svg
```

For the **Host**, use `default._bimi_.` followed by the domain name.

```plaintext
default._bimi_.noclocks.dev.
```

For [[TTL]] set to `1h`.


## Notes

A BIMI Record is a type of DNS Record used to display a company's logo inside an email inbox if the email is trustworthy. Brand Indicator Message Identification (BIMI) Records are an industry-wide effort to use brand logos as indicators to help email recipients recognize and avoid fraudulent messages. This standard has already been rolled out by inboxes such as Gmail, Yahoo!, Apple Mail, and several others.

Though it's already been rolled out by large inbox providers, each inbox's use of BIMI varies. For example, Gmail displays a blue "verified" check mark next to the sender's email address in both desktop and mobile apps if the email passes BIMI tests. On the other hand, Yahoo! displays a company's actual brand logo, but only on their mobile apps. The BIMI standard will continue to evolve with the aim of providing all email users with a robust means to visually identify trustworthy emails against phishing/spam emails posing as businesses upon their arrival to the email inbox.

### Why Implement BIMI?

- Your domain's logo gets prominently displayed in the inbox (see below image)
- Delivering mail to Gmail users means that you get a blue verified check mark
- Improved delivery rates as inboxes find messages that pass BIMI and DMARC the most trustworthy—early results indicate a 10% open rate increase amongst Yahoo! users

### How BIMI Records Work

A fairly recent improvement, most of today's email shows your brand's initials in the customers' inboxes (e.g., R signals Redbox, DT means Discount Tire). This helps current and potential clients identify and trust messages received by these recognizable companies. With BIMI records, that trust factor significantly increases because an actual logo is used in place of mere initials or lack thereof. Publishing a DNS Record automatically integrates your brand into every email sent from your domain (e.g., Best Buy logo displayed instead of BB), which allows message recipients to recognize and have confidence in clicking the message in question.

[![](https://images.mxtoolbox.com/public/images/dmarc/bimi-inbox.png)](https://images.mxtoolbox.com/public/images/dmarc/bimi-inbox.png)

### Requirements of BIMI Records

Using BIMI requires ensuring DMARC authentication is set up on the domain. In fact, the BIMI concept is viewed as an extension of DMARC. Both protocols are highly beneficial to ensuring a domain's messages are delivered and to help crack down on phishing and spoofing attempts. If you haven't set up DMARC yet, you can [read more here about setting up DMARC](https://mxtoolbox.com/dmarc/details/what-is-dmarc). 

### Steps to Publish BIMI Records

After getting DMARC set up and ensuring it's running smoothly for your domain (i.e., monitoring DMARC performance and verifying no delivery issues moving policy to quarantine or reject), integrating the extra bonus of BIMI starts with adding a DNS Record for BIMI, then publishing your logo.

If there's been something holding you back from implementing DMARC, our [Delivery Center](https://mxtoolbox.com/c/products/deliverycenter?source=DMARCcontent) tool will put your company on the right path to enabling and enforcing DMARC. If you've already set up DMARC, we recommend discussing your specific situation with one of our email delivery experts to ensure your business is set up correctly and optimized for the best email delivery. You might be missing key DMARC insights or accidentally overlooking important email delivery problems. [MxToolbox products](https://mxtoolbox.com/c/mxtoolboxproducts?source=DMARCcontent) have everything that you need to employ DMARC and increase email delivery rates for your brand. After all, your company's reputation depends on it.

### **1. Authenticate Your Brand’s Emails with DMARC, SPF, DKIM**

First off, in order to get BIMI set up, you need to understand that it works in conjunction with a few other authentication protocols to verify to your readers that you are, in fact, you!

Before enabling BIMI, you need to have a few other protocols set up: DMARC, SPF, and DKIM:

1. Ensure all three of these are set up and aligned properly.

2. Set up a DMARC record on your “From” domain. Remember: the reject policy in the record must either be _p=reject_ or _p=quarantine_.

If you’re unsure of how DMARC works, or you need more help, you can [check out beehiiv’s handy DMARC resource](https://flight.beehiiv.net/v2/clicks/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJodHRwczovL3N1cHBvcnQuYmVlaGlpdi5jb20vaGMvZW4tdXMvYXJ0aWNsZXMvMTM2NTAwNzgyNzYzNzUtSG93LXRvLXNldC11cC1ETUFSQy1hdXRoZW50aWNhdGlvbj91dG1fc291cmNlPWJsb2cuYmVlaGlpdi5jb20mdXRtX21lZGl1bT1yZWZlcnJhbCZ1dG1fY2FtcGFpZ249aG93LXRvLXNldC11cC1iaW1pLWFuZC13aHktaXQtcy1pbXBvcnRhbnQtaW4tMjAyMyIsInBvc3RfaWQiOiJiZjNhNjA3Mi1mZjg1LTQ2ODEtOTU2Ny1kN2UwZWFiMzM3Y2UiLCJwdWJsaWNhdGlvbl9pZCI6ImViMWQ5MzVjLWE3NWUtNDQ0YS1hYmNjLWQ4ZjU2NTJkY2UxYSIsInZpc2l0X3Rva2VuIjoiMmU2ZTZhNWItMTI5NC00ZThlLWE5YTItMDRjYWUwMjQ5MDhhIiwiaWF0IjoxNzE0Njg2ODU2LCJpc3MiOiJvcmNoaWQifQ.KG646oyI64xOeSLbjBBIVEG-jOGlEl1wrwB1ShzlByo).

### **2. Create an SVG Tiny PS Logo**

Next up, it’s time to create the logo you’ll use in your emails. To do this, you have to create a very specific file type called an SVG. Plus, you’ll have to [ensure the image is the right size](https://flight.beehiiv.net/v2/clicks/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJodHRwczovL2Jsb2cuYmVlaGlpdi5jb20vcC9iZXN0LWVtYWlsLWltYWdlLXNpemUiLCJwb3N0X2lkIjoiYmYzYTYwNzItZmY4NS00NjgxLTk1NjctZDdlMGVhYjMzN2NlIiwicHVibGljYXRpb25faWQiOiJlYjFkOTM1Yy1hNzVlLTQ0NGEtYWJjYy1kOGY1NjUyZGNlMWEiLCJ2aXNpdF90b2tlbiI6IjJlNmU2YTViLTEyOTQtNGU4ZS1hOWEyLTA0Y2FlMDI0OTA4YSIsImlhdCI6MTcxNDY4Njg1NiwiaXNzIjoib3JjaGlkIn0._u516YB-UBfl_Lhtjey17BFk-hQPb9eaoKTtGSzsCnI) so it’s compatible (and looks correct).

Here are some rules when creating your new verified sender logo:

- SVG format (scalable vector graphics)
    
- Centered image
    
- Square aspect ratio
    
- Solid background color
    
- Under 32 kb
    

Remember to make sure your logo has enough space on the outside. Sometimes the outside edges will be circular or square depending on the email provider. You don’t want it to get cut off in the inbox.

Once your logo is created as an SVG file, upload it to a public server.

### **3. Get a VMC**

![How To Set Up BIMI (and Why It’s Important in 2023)](https://media.beehiiv.com/cdn-cgi/image/fit=scale-down,format=auto,onerror=redirect,quality=80/uploads/asset/file/0597bf3d-6944-47c7-9583-ab0aaa8aa16a/image7.jpg)

To ensure your logo displays in Gmail, you’ll need to acquire a VMC. A VMC, or verified mark certificate, is a way to digitally legitimize and certify your logo online.

You can set up your logo’s VMC with [Entrust](https://flight.beehiiv.net/v2/clicks/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJodHRwczovL3d3dy5lbnRydXN0LmNvbS8_dXRtX3NvdXJjZT1ibG9nLmJlZWhpaXYuY29tJnV0bV9tZWRpdW09cmVmZXJyYWwmdXRtX2NhbXBhaWduPWhvdy10by1zZXQtdXAtYmltaS1hbmQtd2h5LWl0LXMtaW1wb3J0YW50LWluLTIwMjMiLCJwb3N0X2lkIjoiYmYzYTYwNzItZmY4NS00NjgxLTk1NjctZDdlMGVhYjMzN2NlIiwicHVibGljYXRpb25faWQiOiJlYjFkOTM1Yy1hNzVlLTQ0NGEtYWJjYy1kOGY1NjUyZGNlMWEiLCJ2aXNpdF90b2tlbiI6IjJlNmU2YTViLTEyOTQtNGU4ZS1hOWEyLTA0Y2FlMDI0OTA4YSIsImlhdCI6MTcxNDY4Njg1NiwiaXNzIjoib3JjaGlkIn0.ICvYrNZ2FAv5BInS6cenS2sSLAPKEjnZhJLyshUHPQI) or [DigiCert](https://flight.beehiiv.net/v2/clicks/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJodHRwczovL3d3dy5kaWdpY2VydC5jb20vdGxzLXNzbC92ZXJpZmllZC1tYXJrLWNlcnRpZmljYXRlcz91dG1fc291cmNlPWJsb2cuYmVlaGlpdi5jb20mdXRtX21lZGl1bT1yZWZlcnJhbCZ1dG1fY2FtcGFpZ249aG93LXRvLXNldC11cC1iaW1pLWFuZC13aHktaXQtcy1pbXBvcnRhbnQtaW4tMjAyMyIsInBvc3RfaWQiOiJiZjNhNjA3Mi1mZjg1LTQ2ODEtOTU2Ny1kN2UwZWFiMzM3Y2UiLCJwdWJsaWNhdGlvbl9pZCI6ImViMWQ5MzVjLWE3NWUtNDQ0YS1hYmNjLWQ4ZjU2NTJkY2UxYSIsInZpc2l0X3Rva2VuIjoiMmU2ZTZhNWItMTI5NC00ZThlLWE5YTItMDRjYWUwMjQ5MDhhIiwiaWF0IjoxNzE0Njg2ODU2LCJpc3MiOiJvcmNoaWQifQ.uLjPYRyEv8AxGHiPtULh0DtkSVya-Giat5AoHuDtjsg).

### **4. Publish a BIMI DNS Record**

Next up, you’ll have to head over to your domain dashboard (or wherever you manage your domain). Once you’re there, you’ll have to create a text record within your domain’s nameservers.

While the next part is going to seem quite complicated because of all the crazy numbers and letters, the process is quite straightforward, as it’s just a simple copy-and-paste job.

In your domain manager, go to your DNS. Create a new TXT record at the default._bimi subdomain.

Add the following values:

default._bimi.[domain] IN TXT “v=BIMI1; l=[SVG URL]; a=[PEM URL];"

Then, fill in these sections:

- **SVG URL:** the web address where you’re hosting your SVG file
    
- **PEM URL:** the web address where you’re hosting your Verified Mark Certificate
    
- **Domain:** your domain name (i.e. [beehiiv.com](https://flight.beehiiv.net/v2/clicks/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJodHRwOi8vYmVlaGlpdi5jb20_dXRtX3NvdXJjZT1ibG9nLmJlZWhpaXYuY29tJnV0bV9tZWRpdW09cmVmZXJyYWwmdXRtX2NhbXBhaWduPWhvdy10by1zZXQtdXAtYmltaS1hbmQtd2h5LWl0LXMtaW1wb3J0YW50LWluLTIwMjMiLCJwb3N0X2lkIjoiYmYzYTYwNzItZmY4NS00NjgxLTk1NjctZDdlMGVhYjMzN2NlIiwicHVibGljYXRpb25faWQiOiJlYjFkOTM1Yy1hNzVlLTQ0NGEtYWJjYy1kOGY1NjUyZGNlMWEiLCJ2aXNpdF90b2tlbiI6IjJlNmU2YTViLTEyOTQtNGU4ZS1hOWEyLTA0Y2FlMDI0OTA4YSIsImlhdCI6MTcxNDY4Njg1NiwiaXNzIjoib3JjaGlkIn0.M0lTAnj91OivCSBh5kruvXgJBWvDzdlbqyr_i4WnTYU))
    

Most DNS providers will require you to enter your BIMI record in two areas:

**The first field is:** default._bimi.example.com

**The second field is:** v=BIMI1; l=[https://example.com/bimi-logo.svg](https://flight.beehiiv.net/v2/clicks/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJodHRwczovL2V4YW1wbGUuY29tL2JpbWktbG9nby5zdmc_dXRtX3NvdXJjZT1ibG9nLmJlZWhpaXYuY29tJnV0bV9tZWRpdW09cmVmZXJyYWwmdXRtX2NhbXBhaWduPWhvdy10by1zZXQtdXAtYmltaS1hbmQtd2h5LWl0LXMtaW1wb3J0YW50LWluLTIwMjMiLCJwb3N0X2lkIjoiYmYzYTYwNzItZmY4NS00NjgxLTk1NjctZDdlMGVhYjMzN2NlIiwicHVibGljYXRpb25faWQiOiJlYjFkOTM1Yy1hNzVlLTQ0NGEtYWJjYy1kOGY1NjUyZGNlMWEiLCJ2aXNpdF90b2tlbiI6IjJlNmU2YTViLTEyOTQtNGU4ZS1hOWEyLTA0Y2FlMDI0OTA4YSIsImlhdCI6MTcxNDY4Njg1NiwiaXNzIjoib3JjaGlkIn0.udcHdc9BO0FG_Zh3u2bsibOP5VKs60xa6XPXRg-qAGQ)

### **5. Verify BIMI Is Set Up Correctly**

Your last step is to double-check that everything is set up just right. To do this, head over to the BIMI Group’s [BIMI inspector tool](https://flight.beehiiv.net/v2/clicks/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJodHRwczovL2JpbWlncm91cC5vcmcvYmltaS1nZW5lcmF0b3IvP3V0bV9zb3VyY2U9YmxvZy5iZWVoaWl2LmNvbSZ1dG1fbWVkaXVtPXJlZmVycmFsJnV0bV9jYW1wYWlnbj1ob3ctdG8tc2V0LXVwLWJpbWktYW5kLXdoeS1pdC1zLWltcG9ydGFudC1pbi0yMDIzIiwicG9zdF9pZCI6ImJmM2E2MDcyLWZmODUtNDY4MS05NTY3LWQ3ZTBlYWIzMzdjZSIsInB1YmxpY2F0aW9uX2lkIjoiZWIxZDkzNWMtYTc1ZS00NDRhLWFiY2MtZDhmNTY1MmRjZTFhIiwidmlzaXRfdG9rZW4iOiIyZTZlNmE1Yi0xMjk0LTRlOGUtYTlhMi0wNGNhZTAyNDkwOGEiLCJpYXQiOjE3MTQ2ODY4NTYsImlzcyI6Im9yY2hpZCJ9.dcliDvk43eFb6-gYVsk1emSyHV5oDraFtuKM5spqLeY) to ensure you’ve set everything up correctly.

Before verifying your BIMI, you should wait about 24 hours after you’ve set everything up. Once you plug everything into the inspector tool, it will tell you if it’s working properly or if there’s something you need to change. The tool will tell you of any potential log issues, and you’ll even be able to preview it in different display scenarios.

## **Make Your Newsletter Stand Out in the Inbox**

[![How To Set Up BIMI (and Why It’s Important in 2023)](https://media.beehiiv.com/cdn-cgi/image/fit=scale-down,format=auto,onerror=redirect,quality=80/uploads/asset/file/a5cbe4a4-efdd-48c3-aaea-f0dae49d906e/image4.jpg)](https://flight.beehiiv.net/v2/clicks/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJodHRwczovL2JlZWhpaXYuY29tLz91dG1fc291cmNlPWJsb2cuYmVlaGlpdi5jb20mdXRtX21lZGl1bT1yZWZlcnJhbCZ1dG1fY2FtcGFpZ249aG93LXRvLXNldC11cC1iaW1pLWFuZC13aHktaXQtcy1pbXBvcnRhbnQtaW4tMjAyMyIsInBvc3RfaWQiOiJiZjNhNjA3Mi1mZjg1LTQ2ODEtOTU2Ny1kN2UwZWFiMzM3Y2UiLCJwdWJsaWNhdGlvbl9pZCI6ImViMWQ5MzVjLWE3NWUtNDQ0YS1hYmNjLWQ4ZjU2NTJkY2UxYSIsInZpc2l0X3Rva2VuIjoiMmU2ZTZhNWItMTI5NC00ZThlLWE5YTItMDRjYWUwMjQ5MDhhIiwiaWF0IjoxNzE0Njg2ODU2LCJpc3MiOiJvcmNoaWQifQ.PxWDkSjvQaePKtZiHKLU5nWBd-8Mj_cms8xMP658be8)

In the ever-changing world of email, it’s more important than ever to ensure your newsletter is standing out in the inbox.

With BIMI, you’ll now be one step closer to establishing yourself as a trusted sender and a recognized brand.

If you want to ensure you continue to separate yourself from the hundreds of emails in your readers' inboxes, then you need to use a trusted email newsletter platform.

At beehiiv, it’s never been easier to launch, grow, and scale an email newsletter. At beehiiv, we understand what it takes to establish yourself in the newsletter game. Our platform is made by creators, for creators, and is stacked with a variety of tools to help you master the inbox.

***

## Appendix

*Note created on [[2024-05-02]] and last modified on [[2024-05-02]].*

### Backlinks

```dataview
LIST FROM [[Brand Indicators for Message Identification (BIMI)]] AND -"CHANGELOG" AND -"//Brand Indicators for Message Identification (BIMI)"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024


