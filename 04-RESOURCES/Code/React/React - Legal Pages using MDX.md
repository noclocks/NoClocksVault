---
creation_date: 2024-04-25
modification_date: 2024-04-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Topic/Dev
  - Status/WIP
aliases:
  - React - Legal Pages using MDX
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

## Overview

> [!SOURCE] Sources:
> - *[two-week-build\_\_remix/app/routes/\_legal/route.tsx at main · ahaywood/two-week-build\_\_remix](https://github.com/ahaywood/two-week-build__remix/blob/main/app/routes/_legal/route.tsx)*
> - *[documentation/content/policies at main · npm/documentation](https://github.com/npm/documentation/tree/main/content/policies)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Code

### Legal Index

> [!SOURCE] References:
> - *https://www.perplexity.ai/search/I-have-a-bqCmKkTPQimXhW4fiLr5Hw?s=c*

- `src/pages/legal/index.tsx`

```typescript
import Footer from '@/components/Footer';

export default function LegalLayout() {
  return (
    <div className="bg-interior bg-no-repeat">
      <div className="page-grid min-h-screen">
        <aside className="p-page md:p-8 md:fixed col-span-12">
          <a href="/">
            <img src="/images/logo.svg" alt="No Clocks, LLC" />
          </a>
        </aside>
        <main className="col-span-12 md:col-start-5 md:col-span-6 md:pt-[130px] px-page md:px-0">
          <div className="content legal-content">
            <Outlet />
          </div>
        </main>
      </div>
      <Footer />
    </div>
  );
}
```

where `src/components/Footer.tsx`:

```typescript
const Footer = () => {
  
  const currentYear = () => new Date().getFullYear();
  
  return (
    <footer className="p-5 text-sm md:p-page text-neutral-500 flex xl:justify-between flex-col xl:flex-row gap-4">
      <div>
        Copyright &copy;{currentYear()}{" "}
        <a href="https://noclocks.dev" target="_blank" rel="noreferrer">
          No Clocks, LLC.
        </a>{" "}
        All Rights Reserved.
      </div>
      <div>
        <a href="/disclaimer">Disclaimer</a> .{" "}
        <a href="/privacy">Privacy Policy</a> .{" "}
        <a href="/terms">Terms of Service</a>
      </div>
    </footer>
  );
};

export default Footer;
}
```

### Privacy Policy

- `src/pages/legal/privacy.mdx`

> [!CODE]- Expand to View Code
> ```mdx
> ---
> title: Privacy Policy
> metaDescription: Your privacy matters. We handle your information with the utmost care and respect. From the data we collect to how it's used to empower your experience, transparency is our guiding principle. We're committed to protecting your privacy and ensuring you have full control over your information. Because your trust is the foundation of every project we embark on together.
> ---
>
> BY VISITING [HTTPS://NOCLOCKS.DEV](https://noclocks.dev), YOU ARE CONSENTING TO OUR PRIVACY POLICY.
>
> ## OVERVIEW
>
> No Clocks, LLC is committed to protecting your privacy online. This Privacy Policy describes the personal information we collect through this website at [https://noclocks.dev](https://noclocks.dev) (the "Site"), and how we collect and use that information.
>
> The terms "we", "us", and "our" refers to No Clocks, LLC. The terms "user", "you", and "your" refer to site visitors, customers, and any other users of the site.
>
> The term "personal information" is defined as information that you voluntarily provide to us that personally identifies you and/or your contact information, such as your name, phone number, and email address.
>
> We provide technology consulting solutions. (the "Service").
>
> Use of the No Clocks, LLC website, including all materials presented herein and all online services provided by No Clocks, LLC, is subject to the following Privacy Policy. This Privacy Policy applies to all site visitors, customers, and all other users of the site. By using the Site or Service,
>
> you agree to this Privacy Policy, without modification, and acknowledge reading it.
>
> ## INFORMATION WE COLLECT
>
> This Site only collects the personal information you voluntarily1 provide to us, which
> may include:
>
> - Email address and first name in order to subscribe visitors to the newsletter
>
> The information you provide is used to process transactions, send periodic emails, and improve the service we provide. We do share your information with trusted third parties who assist us in operating our website, conducting our business and servicing clients and visitors. These trusted third parties agree to keep this information confidential. Your personal information will never be shared with unrelated third parties.
>
> ## ACTIVITY
>
> We may record information relating to your use of the Site, such as the searches you undertake, the pages you view, your browser type, IP address, requested URL, referring URL, and timestamp information. We use this type of information to administer the Site and provide the highest possible level of service to you. We also use this information in the aggregate to perform statistical analyses of user behavior and characteristics in order to measure interest in and use of the various areas of the Site.
>
> ## COOKIES
>
> We may send cookies to your computer in order to uniquely identify your browser and improve the quality of our service. The term “cookies” refers to small pieces of information that a website sends to your computer’s hard drive while you are viewing the Site. We may use both session cookies (which expire once you close your browser) and persistent cookies (which stay on your computer until you delete them). You have the ability to accept or decline cookies using your web browser settings. If you choose to disable cookies, some areas of the Site may not work properly or at all. The Site does not respond to Do Not Track signals sent by your browser.
>
> ## THIRD PARTY LINKS
>
> The Site may contain links to third party websites. Except as otherwise discussed in this Privacy Policy, this document only addresses the use and disclosure of information we collect from you on our Site. Other sites accessible through our site via links or otherwise have their own policies in regard to privacy. We are not responsible for the privacy policies or practices of third parties.
>
> ## SECURITY
>
> We maintain security measures to protect your personal information from unauthorized access, misuse, or disclosure. However, no exchange of data over the Internet can be guaranteed as 100% secure. While we make every effort to protect your personal information shared with us through our Site, you acknowledge that the personal information you voluntarily share with us through this Site could be
> accessed or tampered with by a third party. You agree that we are not responsible for any intercepted information shared through our Site without our knowledge or permission. Additionally, you release us from any and all claims arising out of or related to the use of such intercepted information in any unauthorized manner.
>
> ## CHILDREN
>
> To access or use the Site, you must be 18 years old or older and have the requisite power and authority to enter into this Privacy Policy. Children under the age of 18 are prohibited from using the Site.
>
> ## Visitors’ GDPR Rights
>
> According to the GDPR a “data subject” is defined as an identifiable natural person. A natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as: a name, an identification number, location data, or online identifier. Alternatively, they may be identified by reference to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural, or social identity of that natural person. A data subject may be of any age or nationality.
>
> As a data subject, within the European Union, you are entitled to certain rights under the General Data Protection Regulation (GDPR). Those rights include:You have the right to be informed with respect to your personally identifiable information (PII) retained by the Company. As such, you may request access to your data that the Company stores and the rights to either correct or erase your personal data.We will retain any personally identifiable information you choose to provide to us unless: (a) you request for us to delete the information, (b) we stop using our existing data providers, or (c) at Company’s discretion, we decide to remove the data.You have the right to seek restrictions on the processing of your data.You have the right to object to the processing of your data and the right to the portability of your data.You have the right to withdraw consent provided to the Company concerning the processing of your personal data, as well as the right to withdraw that consent at any time, without affecting the lawfulness of processing based upon consent that occurred prior to your withdrawal of consent.You have the right to not be subjected to automated decision-making via pre-ticked boxes, additions to our email marketing lists and the like.You have the right to lodge a complaint with a supervisory authority that has jurisdiction over issues related to the General Data Protection Regulation.We require only the information that is reasonably required to enter into a contract with you. We will not require you to provide consent for any unnecessary processing as a condition of entering into a contract with us by way of downloading a lead magnet, webinar, freebie or any other traditional list building methods.
>
> ## UPDATING YOUR INFORMATION
>
> You may access and correct your personal information and privacy preferences by contacting us via email at [support[at]twoweekbuild.com](mailto:support@twoweekbuild.com).
>
> ## CHANGES TO THIS POLICY
>
> You acknowledge and agree that it is your responsibility to review this Site and this Policy periodically and to be aware of any modifications. We will notify you of any changes to this privacy policy by posting those changes on this page.
>
> ## CONTACT
>
> If you have questions about our privacy policy, please email us at [support[at]twoweekbuild.com](mailto:support@twoweekbuild.com).
>
> ***
>
> Updated: **April 2024**
> ```


### Terms of Service

- `src/pages/legal/terms.mdx`

> [!CODE]- Expand to View Code
> ```mdx
> ---
> title: Terms and Conditions
> metaDescription: Our Terms and Conditions lay out the groundwork for a safe, respectful, and creative community. Our terms outline everything you'll find everything you need to know about what to expect from us and what we expect from you. While we love to keep things light and fun, we’re serious about making this space welcoming for everyone.
> ---
>
> # Terms and Conditions
>
> BY VISITING [HTTPS://TWOWEEKBUILD.COM](https://twoweekbuild.com), YOU ARE CONSENTING TO OUR
> TERMS AND CONDITIONS.
>
> ## OVERVIEW
>
> The terms “we,” “us,” and “our” refer to Two Week Build. The term the “Site” refers to [https://twoweekbuild.com](https://twoweekbuild.com). The terms “user,” “you,” and “your” refer to site visitors, customers, and any other users of the site.
>
> Two Week Build is a 14 day challenge, meant to provide community and encourage users to build a project within two weeks (the “Service”).
>
> Use of [https://twoweekbuild.com](https://twoweekbuild.com), including all materials presented herein and all online services provided by Two Week Build, is subject to the following Terms and Conditions. These Terms and Conditions apply to all site visitors, customers, and all other users of the site. By using the Site or Service, you agree to these Terms and Conditions, without modification, and acknowledge reading them.
>
> ## USE OF THE SITE AND SERVICE
>
> To access or use the Site, you must be 18 years of age or older and have the requisite power and authority to enter into these Terms and Conditions. Children under the age of 18 are prohibited from using the Site. Information provided on the Site and in the Service related to their JavaScript challenges and other information are subject to change. Ah Ha Creative, LLC makes no representation or warranty that the information provided, regardless of its source (the “Content”), is accurate, complete, reliable, current, or error-free. Ah Ha Creative, LLC disclaims all liability for any inaccuracy, error, or incompleteness in the Content.
>
> ## ACCOUNT CREATION
>
> In order to use the Service, you may be required to provide information about yourself including your name, email address, username and password, and other personal information. You agree that any registration information you give to Ah Ha Creative, LLC will always be accurate, correct, and up to date. You must not impersonate someone else or provide account information or an email address other than your own. Your account must not be used for any illegal or unauthorized purpose. You must not, in the use of the Service, violate any laws in your jurisdiction.
>
> ## LAWFUL PURPOSES
>
> You may use the Site and Service for lawful purposes only. You agree to be financially responsible for all purchases made by you or someone acting on your behalf through the Site. You agree to use the Site and to purchase services or products through the Site for legitimate, non-commercial purposes only. You shall not post or transmit through the Site any material which violates or infringes the rights of others, or which is threatening, abusive, defamatory, libelous, invasive of privacy or publicity rights, vulgar, obscene, profane, or otherwise objectionable, contains injurious formulas, recipes, or instructions, which encourages conduct that would constitute a criminal offense, give rise to civil liability, or otherwise violate any law.
>
> ## REFUSAL OF SERVICE
>
> The Services are offered subject to our acceptance of your order or requests. We reserve the right to refuse service to any order, person or entity, without the obligation to assign reason for doing so. No order is deemed accepted by us until payment has been processed. We may at any time change or discontinue any aspect or feature of the Site or Service, subject to us fulfilling our previous responsibilities to you based on acceptance of your payment.
>
> ## ORDER CONFIRMATION2
>
> We will email you to confirm the placement of your order and with details concerning product delivery. In the event that there is an error in this email confirmation, it is your responsibility to inform us as soon as possible.
>
> ## CANCELLATIONS, REFUNDS & RETURNS2
>
> For Two Week Build 2023, this product is free. You can cancel your account and unsubscribe at any time.
>
> ## PRODUCT DESCRIPTION
>
> We endeavor to describe and display the Service as accurately as possible. While we try to be as clear as possible in explaining the Service, please do not accept that the Site is entirely accurate, current, or error-free. From time to time we may correct errors in pricing and descriptions. We reserve the right to refuse or cancel any order with an incorrect price listing.
>
> ## MATERIAL YOU SUBMIT TO THE SITE
>
> You shall not upload, post or otherwise make available on the Site any artwork, photos, or other materials (collectively “Materials”) protected by copyright, trademark, or other proprietary right without the express written permission of the owner of the copyright, trademark, or other proprietary right, and the burden of determining that any Materials are not so protected rests entirely with you. You shall be liable for any damage resulting from any infringement of copyrights, trademarks, or other proprietary rights, or any other harm resulting from such a submission. For all Materials submitted by you to the Site, you automatically represent or warrant that you have the authority to use and distribute the Materials, and that the use or display of the Materials will not violate any laws, rules, regulations, or rights of third parties.
>
> ## INTELLECTUAL PROPERTY RIGHTS TO YOUR MATERIALS
>
> We claim no intellectual property rights over the material you supply to Ah Ha Creative, LLC. You retain copyright and any other rights you may rightfully hold in any content that you submit through the Site or Service. Content you submit to Ah Ha Creative, LLC remains yours to the extent that you have any legal claims therein. You agree to hold Ah Ha Creative, LLC harmless from and against all claims, liabilities, and expenses arising out of any potential or actual copyright or trademark misappropriation or infringement claimed against you. By posting material on the Site, you grant us a worldwide, nonexclusive, irrevocable license to use the material for promotional, business development, and marketing purposes.
>
> ## OUR INTELLECTUAL PROPERTY
>
> The Site and Service contain intellectual property owned by Ah Ha Creative, LLC, including trademarks, copyrights, proprietary information, and other intellectual property. You may not modify, publish, transmit, participate in the transfer or sale of, create derivative works from, distribute, display, reproduce or perform, or in any way exploit in any format whatsoever any of the Site or Service
> Content or intellectual property, in whole or in part, without our prior written consent. We reserve the right to immediately remove you from the Service, without refund, if you are caught violating this intellectual property policy.
>
> ## CHANGED TERMS
>
> We may at any time amend these Terms and Conditions. Such amendments are effective immediately upon notice to you by us posting the new Terms and Conditions on this Site. Any use of the Site or Service by you after being notified means you accept these amendments. We reserve the right to update any portion of our Site and Service, including these Terms and Conditions, at any time. We will
> post the most recent versions to the Site and list the effective dates on the pages of our Terms and Conditions.
>
> ## LIMITATION OF LIABILITY
>
> YOU AGREE THAT UNDER NO CIRCUMSTANCES SHALL WE BE LIABLE FOR DIRECT, INDIRECT, INCIDENTAL, CONSEQUENTIAL, SPECIAL, PUNITIVE, EXEMPLARY, OR ANY OTHER DAMAGES ARISING OUT OF YOUR USE OF THE SITE OR SERVICE. ADDITIONALLY, AH HA CREATIVE, LLC IS NOT LIABLE FOR DAMAGES IN CONNECTION WITH (I) ANY FAILURE OF PERFORMANCE, ERROR, OMISSION, DENIAL OF SERVICE, ATTACK, INTERRUPTION, DELETION, DEFECT, DELAY IN OPERATION OR TRANSMISSION, COMPUTER VIRUS, OR LINE OR SYSTEM FAILURE; (II) LOSS OF REVENUE, ANTICIPATED PROFITS, BUSINESS, SAVINGS, GOODWILL OR DATA; AND (III) THIRD PARTY THEFT OF, DESTRUCTION OF, UNAUTHORIZED ACCESS TO, ALTERATION OF, OR USE OF YOUR INFORMATION OR PROPERTY, REGARDLESS OF OUR NEGLIGENCE, GROSS NEGLIGENCE, FAILURE OF AN ESSENTIAL PURPOSE AND WHETHER SUCH LIABILITY ARISES IN NEGLIGENCE, CONTRACT, TORT, OR ANY OTHER THEORY OF LEGAL LIABILITY. THE FOREGOING APPLIES EVEN IF AH HA CREATIVE, LLC HAS BEEN ADVISED OF THE POSSIBILITY OF OR COULD HAVE FORESEEN THE DAMAGES. IN THOSE STATES THAT DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR THE DAMAGES, OUR LIABILITY IS LIMITED TO THE FULLEST POSSIBLE EXTENT PERMITTED BY LAW. IN NO EVENT SHALL AH HA CREATIVE, LLC’S CUMULATIVE LIABILITY TO YOU EXCEED THE TOTAL PURCHASE PRICE OF THE SERVICE YOU HAVE PURCHASED FROM AH HA CREATIVE, LLC, AND IF NO PURCHASE HAS BEEN MADE BY YOU AH HA CREATIVE, LLC’S CUMULATIVE LIABILITY TO YOU SHALL NOT EXCEED $100.
>
> ## THIRD PARTY RESOURCES
>
> The Site and the Service contain links to third party websites and resources. You acknowledge and agree that we are not responsible or liable for the availability, accuracy, content, or policies of third party websites or resources. Links to such websites or resources do not imply any endorsement by or affiliation with Ah Ha Creative, LLC. You acknowledge sole responsibility for and assume all risk arising from your use of any such websites or resources.
>
> ## INDEMNIFICATION
>
> You shall indemnify and hold us harmless from and against any and all losses, damages, settlements, liabilities, costs, charges, assessments, and expenses, as well as third party claims and causes of action, including, without limitation, attorney’s fees, arising out of any breach by you of any of these Terms and Conditions, or any use by you of the Site or Service. You shall provide us with such assistance, without charge, as we may request in connection with any such defense, including, without limitation, providing us with such information, documents, records, and reasonable access to you, as we deem necessary. You shall not settle any third party claim or waive any defense without our prior written consent.
>
> ## EFFECT OF HEADINGS
>
> The subject headings of the paragraphs and subparagraphs of this Agreement are included for convenience only and shall not affect the construction or interpretation of any of its provisions.
>
> ## ENTIRE AGREEMENT; WAIVER
>
> This Agreement constitutes the entire agreement between you and Ah Ha Creative, LLC pertaining to the Site and Service and supersedes all prior and contemporaneous agreements, representations, and understandings between us. No waiver of any of the provisions of this Agreement by Ah Ha Creative, LLC shall be deemed, or shall constitute, a waiver of any other provision, whether or not similar, nor shall any waiver constitute a continuing waiver. No waiver shall be binding unless executed in writing by Ah Ha Creative, LLC.
>
> ## NOTICES
>
> All notices, requests, demands, and other communications under this Agreement shall be in writing and properly addressed as follows:
>
> PO Box 844
> Brentwood, TN 37027
>
> ## GOVERNING LAW; VENUE; MEDIATION
>
> This Agreement shall be construed in accordance with, and governed by, the laws of the State of Tennessee as applied to contracts that are executed and performed entirely in Tennessee. The exclusive venue for any arbitration or court proceeding based on or arising out of this Agreement shall be Williamson County, Tennessee. The parties agree to attempt to resolve any dispute, claim, or controversy arising out of or relating to this Agreement by mediation, which shall be conducted under the then current mediation procedures of The CPR Institute for Conflict Prevention & Resolution3 or any other procedure upon which the parties may agree. The parties further agree that their respective good faith participation in mediation is a condition precedent to pursuing any other available legal or equitable remedy, including litigation, arbitration, or other dispute
> resolution procedures.
>
> ## RECOVERY OF LITIGATION EXPENSES
>
> If any legal action or any arbitration or other proceeding is brought for the enforcement of this Agreement, or because of an alleged dispute, breach, default, or misrepresentation in connection with any of the provisions of this Agreement, the successful or prevailing party or parties shall be entitled to recover reasonable attorney’s fees and other costs incurred in that action or proceeding, in addition to any other relief to which it or they may be entitled.
>
> ## SEVERABILITY
>
> If any term, provision, covenant, or condition of this Agreement is held by an arbitrator or court of competent jurisdiction to be invalid, void, or unenforceable, the rest of the Agreement shall remain in full force and effect and shall in no way be affected, impaired, or invalidated.
>
> ## ASSIGNMENT
>
> These Terms and Conditions bind and inure to the benefit of the parties’ successors and assigns. These Terms and Conditions are not assignable, delegable, sublicenseable, or otherwise transferable by you. Any transfer, assignment, delegation, or sublicense by you is invalid.
>
> ***
>
> Updated: **April 2024**
> ```


### Disclaimers

- `src/pages/legal/disclaimer.mdx`

> [!CODE]- Expand to View Code
> ```mdx
> ---
> title: Disclaimers
> metaDescription: Here in the fine print of 'No Clocks, LLC.' While we strive to ensure your development experience is as seamless and inspiring as possible, there are a few legal landscapes we need to navigate together. This page covers the essentials—from what we're responsible for to the nitty-gritty details that keep our community safe and sound. We've tried to keep it as clear and straightforward as possible because we know your focus is on creating something great. Take a moment to familiarize yourself with these guidelines, and then let's get back to building amazing things together!
> ---
>
> # Disclaimers
>
> This website/community/blog/email series is an educational and informational resource for builders. It is not a substitute for working with a consultant. I cannot guarantee the outcome of following the recommendations provided and my statements about the potential outcome are expressions of opinion only. I make no guarantees about the information and recommendations provided herein. By continuing to use/read/participate in this website/community/blog/email series you acknowledge that I cannot guarantee any particular results, as such outcomes are based on subjective factors that are not within my control. Therefore, following any information or recommendations provided on this website/community/blog/email series are at your own risk. If you need technical/startup/business advice, you should hire a consultant or other professional.
>
> ***
> Updated: **April 2024**
> ```

### Styles

- `src/styles/*.css`

```css
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  ...

  footer a {
    @apply border-b-2 border-neutral-500 hover:text-springBud
  }

  .legal-content h1 {
    @apply text-springBud text-4xl md:text-6xl lg:text-8xl font-mono leading-none mb-8 -tracking-tight;
  }
```

***

## Appendix

*Note created on [[2024-04-25]] and last modified on [[2024-04-25]].*

### Backlinks

```dataview
LIST FROM [[React - Legal Pages using MDX]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - Legal Pages using MDX"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024