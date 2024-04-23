---
title: Migrate Website from FindLaw
source: https://chat.openai.com/c/0083d198-6ea1-4e6f-a16c-a02af699c945
---

# Migrate Website from FindLaw

#### You:
<time datetime="2024-03-25T22:54:51.591Z" title="3/25/2024, 6:54:51 PM">06:54 PM</time>

I need to email a client a summary of steps to take to migrate his website away from findlaw.com and need you to summarize in a succinct manner the following information discovered online: You’ve decided you are not going to renew your _FindLaw_ contract, and you want to work with another Internet marketing provider.  The problem is that what comes next is the dizzying array of steps and costs that your law firm could incur by making this switch.  _FindLaw_ uses a proprietary content management system – or CMS – to manage your website.  They may also have purchased some domains for you as well.  According to their contract, _FindLaw_ is happy to charge you to continue using their “EUI”, or End User Interface at a rate of 25% of the value of your contract per year.  Or, you can un-handcuff yourself from them by following these precise set of instructions, and own your content and domains and be provider-agnostic – of course, when your contract is up and you’ve decided to switch. First, let’s cover some basic definitions because we are going to use these terms a lot in our instructions:

_Domain or Domain Name:_  A domain name is your website address, like yourawesomelawfirm.com.  We’ll show you how to find out who controls this.

_Registrar:_  This is the company that manages your domain names for you, like GoDaddy or Network Solutions.  We think _FindLaw_ predominantly uses a company called DomainPeople.com, and so if they have purchased your domains for you, this is probably where you will find all of the records.

_Hosting or Host Provider:_  This is the company that provides a server to put your website on so it is accessible on the Internet.  _FindLaw_ has likely been hosting your website on a cluster of servers with thousands of other customers.

_DNS_:  This is an acronym for Domain Name Server or Domain Name System.  It’s like a phonebook for the Internet that associates your domain name to an IP address for the server it is hosted on.  It stores information called “DNS records” that control your email (MX records), subdomains (name server records) and more.  _FindLaw_ has been controlling your DNS, and we’ll show you how to move it to another provider.

_Design Files:_  Design files are typically referred to as Photoshop files, or Indesign files – something a graphic designer would give you.  However, _FindLaw_ confuses its customers by telling them at the end of the contract, they will send you the “design files” on a CD.  What you get on the CD is not design files, but rather a full “scrape” of your website in HTML.  We’ll explain why this won’t help you in a minute.

_HTML Scrape:_  Your web guy or developer should be able to “scrape”, or copy, the source code and HTML/CSS from any public website.  It’s a rather easy process, and you could create a “carbon copy”of your website in just a few minutes.  However, none of it is easily editable.   You’ll need to choose a new CMS, like WordPress, and get all of your content, photos, video and more transferred over by hand.  There is no programatic way to do this.

——————————————————————————————————————————————–

OK, now that we have some basic definitions down, lets get into the steps.  Give yourself a minimum of 4-6 weeks to complete all steps.

**Step 1** – Get Your IT Guy In The Room.

Identify an IT person either in-house or outsourced who helps manage things like your computers, email, websites, etc.  We’re going to need this person very soon.

**Step 2** – Find a Graphic Designer.

Since _FindLaw_ will not give you the original design files of the website you paid for (they consider this to be proprietary), you will need to find a graphic designer who can either emulate or redesign your existing website.  You could take the HTML scrape and try to build a WordPress theme out of it, but based on our tests, it takes the same amount of time to just redesign it and get the PSD, rather than try to cobble together a theme out of perhaps poorly written HTML or CSS.

**Step 3** – Find a WordPress Developer.

Typically, a designer will not be the same person who can program or code a website.  There are some, so if you happen to find a guy (or gal) who can design AND get that into a WordPress theme for you, then great – move on to the next step.

**Step 4** – See Who Controls The Domain Name.

If you purchased your own domain, then you may have a GoDaddy account or similar.  Find the login and password to this account.  If _FindLaw_ purchased the domain for you, we can see if they put it in your name, or theirs.  Simply Google “who is” and click on the top result (probably Network Solutions).  Click on the link and add your domain name in the box.  What you will get is something like this:

[![cancel FindLaw](https://pearanalytics.com/wp-content/uploads/2013/04/quit-FindLaw-part-1.png)](https://pearanalytics.com/wp-content/uploads/2013/04/quit-FindLaw-part-1.png)

Put in a request to your _FindLaw_ rep that you would like the Registrant Contact, Administrative Contact and Technical Contact changed to the name and contact info of YOUR IT person.  If you are using an outsourced IT firm, make them the Technical Contact, and make the law firm the Registrant and Administrative Contact.  Remember, domain names are like pieces of property and legally, these need to be in your name in case anything comes up so you will have the right to make decisions.  This would be like putting _FindLaw_ as the trustee on your estate or will – not what you want.

**Important Note:  Take a look at the expiration date on this record, and make sure it will not expire anytime soon, and register it for at least two years out.  All domain transfers come with a 1-year renewal.**

**Step 5 –  Take Inventory of Your Website.**

Here we want to take a close look at all of the features and functions that _FindLaw_ is providing on your website, because all of these services will need to be replaced.  If you have video, _FindLaw_ may be using Brightcove as the video player on your website.  You will want to get the raw video files in .mp4 format and get them into YouTube so they can be easily embedded on the new website later.  YouTube is more SEO friendly, and free compared to Brightcove.

If you were using live chat, once you move off of _FindLaw_, you will not be able to use their live chat service anymore.  We would recommend a service such as [Olark](http://olark.com/ "live chat software") or [SnapEngage](http://snapengage.com/ "live chat software") as a lightweight, inexpensive alternative.

For contact forms, if you move to WordPress, we would use a plugin called Gravity Forms and from there you can link it into just about any CRM of your choice.

For trackable phone numbers, there are a variety of choices out there, but we like [CallRail](http://www.callrail.com/ "call tracking software") for its simple, but full-featured SaaS app.

Are you paying for mobile access with _FindLaw_?  Consider building a responsive theme so your site is rendered properly on any mobile device.  There will not be a need to pay any other 3rd party service for a “mobile-friendly version” of your website.

**Step 6a – Get Your Designer Going.**

Your graphic designer can now start the process of recreating the design of your website.  Instruct the designer that you would like he or she to design several “themes” to the website – these would include a home page, an attorney bio page, an area of practice page, a blog or article page, and maybe 1 or 2 generic pages for things like about, contact, terms, etc.  Provide your designer with a vector file of your logo (a file that ends in .ai or .eps) or at least a high resolution .png or jpeg, along with as many images or photography as you may have.  They can also use what’s on the existing website.  The final outcome that you want from the designer is a layered PSD file – even if they are going to put it into WordPress for you – get this file.  If your relationship ends with your designer in the future, you won’t be able to easily make design modifications to your site without this file.

**Step 6b – Start Setting Up a Host Environment.**

Remember, once your _FindLaw_ contract ends, they will not host your site anymore.  While your designer is working on getting you an actual “design file”, have your new host provider start setting up a place to host your new website.  They will know the typical set up for a WordPress site.  Your web developer (or designer) who is translating the design into WordPress is going to need either “SSH access” or “FTP access” as well as the database credentials to set everything up.  Hosting people just make sure the site is up and running – they generally don’t setup complex WordPress websites for you.  In the end, you may get a separate monthly hosting bill.  If you need an excellent and cost-effective WordPress hosting company, we recommend [WPEngine](http://wpengine.com/).  Once you have this server setup, go ahead and scrape the current site and set it up on this server – just in case your contract ends with _FindLaw_ before the transfer is complete.

**Step 7 – (optional) Begin Transferring the Registrar.**

While _FindLaw_ does set up the domains at DomainPeople.com with an account for each domain that you have access to, you may have other domains somewhere else and you want them to be managed all in one place.  This is completely up to you.  DomainPeople could host your DNS records, while your hosting provider hosts the actual website itself.  If this is the case, when the WordPress site is ready, simply log into DomainPeople (or whoever the registrar is) and change the DNS per the hosting company’s instructions.  Referencing the image above, you will change the nameservers from ns1.westgroup.net and ns2.westgroup.net to something else.

However, to change the registrar over to perhaps your outsourced IT company (who may have purchased dozens of other domains for you), there is a 3-part step to do this:

1) Log into your current registrar (DomainPeople) and first, unlock the domain.  This allows you to move it.

2) Once you have unlocked the domain, there should be an Authorization Code that appears.  Copy this and send it to your new registrar.

3) Your new registrar will initiate whats called a Domain Transfer Request.  Within minutes, whoever is listed as the technical contact on the domain, will receive an email with instructions that include a Transaction ID and Security Code.  Send this information to your new registrar.

4) The new registrar will complete the process, and within 7 days, your domain will be under their full control.

[![cancel findlaw](https://pearanalytics.com/wp-content/uploads/2013/04/cancel-findlaw.png)](https://www.pearanalytics.com/wp-content/uploads/2013/04/cancel-findlaw.png)

**Step 8 – Design Completed – Begin Slicing and Building WordPress Custom Theme & Post Types.**

Now that your design is completed, the WordPress developer will need to start piecing out the Photoshop file and building a custom HTML and CSS theme for each layout.  This process should only take 2-3 days max.  Once there is a working theme in place, they wil begin to customize the CMS so that you will easily be able to update each page, or particular sections of the website.  These are generally called “custom post types”.  This process could take another 5-10 days, depending on how many features your site has.

**Step 9 – Begin Porting Over Your Content.**

Remember that there is no automated way to copy all of your content from the original site, and place it into the proper database format for WordPress.  This will need to be done manually.  While you port over the content, you mind as well optimize it for SEO at the same time, and use the Yoast SEO Plugin for WordPress.  This will allow you to optimize each page based on a specific keyword, such as “car accident attorney”, etc.

**Step 10 – Change the DNS.**

If the website is ready and it has been tested, you are ready to switch your DNS to the new host provider.  Login to your registrar and change the name servers per the instructions of the host provider.  It might take 30 minutes or so to propagate through the Internet, so while some people may see it live in Texas, they may not see it live yet in Virginia.

Sound like a lot?  It is.  But Pear Analytics can help you through the process step-by-step.  Please call (888) 427-2178 and let us evaluate your situation at no charge.

 **Update 4/25**

**Step 11 – 301 Redirects For Old Site Pages.**  I almost forgot.  You will need to 301 redirect all of the old URL’s from the FindLaw site to the new URL’s on your WordPress site.  FindLaw’s URL structure has pages that typically end in “.shtml”.  Go to Google and type this in the search bar: “site:www.yourwebsite.com” where yourwebsite is your firm’s website address.  You will then get a list of all pages Google has in their index for the OLD FindLaw website.  You can easily 301 redirect all of these over by using the Redirection plugin in WordPress.  Use Google Webmaster Tools to keep an eye out for any 404 errors, which will likely be cause by lingering pages from the old site.

#### ChatGPT:
<time datetime="2024-03-25T22:55:30.390Z" title="3/25/2024, 6:55:30 PM">06:55 PM</time>

When emailing your client about migrating their website away from FindLaw, it's crucial to provide a clear, concise summary of the necessary steps. Here's a structured outline you might use:

---

Subject: Steps for Migrating Your Website Away from FindLaw

Dear \[Client's Name],

I understand your decision to transition your law firm's website from FindLaw to a new Internet marketing provider. The process involves several key steps and potential costs, but with careful planning, it's manageable. Below is a succinct guide to help you navigate this transition:

1. **Initial Preparation:**
   - **Engage IT Support:** Involve your IT specialist early in the process for technical guidance.
   - **Design Considerations:** Since FindLaw retains original design files, hire a graphic designer to recreate or design anew your website's look.

2. **Technical Steps:**
   - **Domain Control:** Determine whether FindLaw or another registrar controls your domain. If FindLaw does, request that they transfer control to your IT specialist or firm.
   - **Choose a Hosting Provider:** FindLaw won't host your site post-contract. Select a new host for your website, with WordPress being a recommended CMS for ease of use and flexibility.
   - **Website Design and Development:**
     - Begin redesigning your website with your graphic designer.
     - Hire a WordPress developer to convert these designs into a functional theme.

3. **Content Migration:**
   - **Inventory Current Features:** Assess all current website functionalities, including video, live chat, and forms, to replicate or replace them on your new platform.
   - **Manual Content Transfer:** Content must be manually moved to the new site, with an opportunity to optimize for SEO in the process.

4. **Finalizing the Migration:**
   - **DNS Transfer:** When the new site is ready, update the DNS records to point to your new hosting provider.
   - **301 Redirects:** Implement 301 redirects for all old URLs to preserve SEO rankings and ensure a smooth user experience.

Please allocate 4-6 weeks to complete these steps thoroughly. Remember, while the process may seem daunting, it ensures you will have complete ownership and control over your website and its content.

Should you need any assistance or have questions about any of these steps, feel free to reach out. We're here to make this transition as smooth as possible for you.

Best regards,

\[Your Name]

---

This email template encapsulates the crucial steps your client needs to take, presented in a structured and digestible manner, ensuring clarity and actionable guidance.
