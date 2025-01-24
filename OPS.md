# Vox Pupuli DevOps

This is an overview of our infrastructure.
Stuff that's sponsored, or paid by us, is explicitly marked.


* [System rules](#system-rules)
* [Systems](#systems)
    * [ci01.voxpupu.li](#ci01.voxpupu.li)
    * [ci02.voxpupu.li](#ci02.voxpupu.li)
    * [CERN CI runners](#CERN-CI-runners)
* [Software as a service](#software-as-a-service)
    * [public mailinglist](#public-mailinglist)
    * [PMC alias](#PMC-alias)
    * [internal PMC email addresses](#internal-PMC-email-addresses)
    * [DNS](#dns)
    * [Cloudflare](#Cloudflare)

## System rules

* We manage systems via puppet apply and [our controlrepo](https://github.com/voxpupuli/controlrepo)
* they are all under the `voxpupu.li` domain

## Systems

### ci01.voxpupu.li

* Dedicated X86 server sponsored by [macarne.com](https://macarne.com/).
* It hosts different CI runners

### ci02.voxpupu.li

* ARM64 VM at [Hetzner](https://hetzner.de/), sponsored by simonhoenscheid

### CERN CI runners

* Different VMs managed and sponsored by CERN
* Currently configured as runners for the whole [voxpupuli GitHub org](https://github.com/organizations/voxpupuli/settings/actions/runner-groups/4)
* contact person is straylen
* For incidents contact `service-desk@cern.ch`

## Software as a service

Admin access to the services is handled via shared accounts in `puppet_credentials` or via personal accounts.
Those are explained in the governance.md doc in the PMC section.
Use `pmc@voxpupuli.org` for administrative accounts & `voxbot@voxpupuli.org` for bot accounts.

### public mailinglist

[groups.io](https://groups.io/g/voxpupuli) runs the `voxpupuli@groups.io` mailinglist.

### PMC alias

`pmc@voxpupuli.org` is configured at [mailgun](https://app.mailgun.com/mg/sending/mailing-lists/pmc%40voxpupuli.org?listMembers=%7B%22limit%22%3A10%2C%22searchAddress%22%3A%22%22%2C%22skip%22%3A0%7D).

### internal PMC email addresses

We've two internal email addresses.
They shouldn't be used publicly.
They are listed in the `puppet_credentials`.
Those are paid in advance via our open source collective credit card.

### DNS

Our domain registrar is [INWX](https://www.inwx.de/de).
We use the nameservers at INWX and Hetzner.
The domains are paid in advance via our open source collective credit card.

### Cloudflare

We've a cloudflare account.
It handles our website [voxpupuli.org](https://voxpupuli.org/).
Requests are forwarded to GitHub pages for [github.com/voxpupuli/voxpupuli.github.io](https://github.com/voxpupuli/voxpupuli.github.io).
