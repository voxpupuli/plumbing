# Vox Pupuli Governance

## ToC

* [Roles and Responsibilities](#roles-and-responsibilities)
  * [Users](#users)
  * [Contributors](#contributors)
  * [Collaborators](#collaborators)
  * [Project Management Committee (PMC)](#project-management-committee-pmc)
    * [PMC Onboarding](#pmc-onboarding)
  * [Specialized Roles](#specialized-roles)
* [Lazy Consensus](#lazy-consensus)
* [PMC Removal](#pmc-removal)
* [Transparency](#transparency)
* [Election](#election)

---

## Roles and Responsibilities

In order to have a smoothly running project, formal roles with corresponding
responsibilities are established. A member of the community may have multiple
roles.

### Users

*How to become one*: Use a Vox Pupuli project

Users are community members who have a need for the project. They are the most
important members of the community: without them, the project would have no
purpose. Anyone can be a user; there are no specific requirements. Users should
be encouraged to participate in the life of the project and the community as
much as possible. User contributions enable the project team to ensure that
they are satisfying the needs of those users. Common user activities include
(but are not limited to):

* Advocating for use of the project
* Informing developers of project strengths and weaknesses from a user’s perspective
* Providing moral support (a ‘thank you’ goes a long way)
* Writing documentation and tutorials
* Filing bug reports and feature requests
* Participating on the discussion board

Users who continue to engage with the project and its community will often find
themselves becoming more and more involved. Such users may then go on to become
collaborators and contributors, as described below.

### Contributors

*How to become one*: Submit a pull request to a Vox Pupuli project

Contributors are community members who submit patches or other contributions
(art, docs, user support, etc) to the project. These patches may be a one-time
occurrence or occur over time. It is anticipated that contributions may be
small at first, growing more considerable once the contributor has built up the
necessary knowledge, experience, and confidence.

### Collaborators

*How to become one*: Be a contributor and be nominated to the PMC as a
collaborator. Nominations should be sent to
[pmc@voxpupuli.org](mailto:pmc@voxpupuli.org). You may nominate yourself. It is
also common to give collaborator status to an individual who donates code to
the project by migrating a repository to the github namespace. Also the PMC can
approach contributors and ask them if they are interested in becoming a
collaborator.

Collaborators are contributors who have shown wide dedication to the Vox Pupuli
project in general or deep dedication to one project in particular, and the
ability to work well with contributors and other users. The collaborators have
responsibilities beyond the contributors. In particular, collaborators formally
decide on whether a pull request is merged or a release is cut. Collaborators
are recognized and valued for their contributions, in whatever form those
contributions take. Tasks such as communication, documentation, art, packaging,
and testing are all valued contributions. A collaborator will use lazy
consensus to decide on whether to merge a pull request from a contributor. If
the discussion is no longer moving towards a consensus, the PMC must vote via
lazy consensus on whether the patch should be applied.

Our release process for modules creates a Git tag that's signed with GPG.
Therefor collaborators need to [setup GPG](https://help.github.com/en/articles/telling-git-about-your-signing-key)
on their machine and add the public key to [their GitHub profile](https://help.github.com/en/articles/adding-a-new-gpg-key-to-your-github-account).
It's also a good advice to sign [every commit](https://help.github.com/en/articles/signing-commits)
and [tag](https://help.github.com/en/articles/signing-tags) with GPG.

### Project Management Committee (PMC)

*How to become one*: Win in the yearly election.

The project management committee has responsibilities beyond collaborators that
include participating in strategic planning, release planning and approving
changes to the governance model. One of the most important duties is to uphold
the community code of [conduct](https://voxpupuli.org/coc/) and ensure its
values. The PMC has to make decisions when community consensus cannot be
reached.

The PMC has final say over who can become a committer and will use lazy
consensus for approval. Discussion over committer nominations will be done in
private.

Membership of the PMC is by election.
[Condorcet](https://en.wikipedia.org/wiki/Condorcet_method) voting is held once
a year. A non-running election official is appointed by the PMC and runs the
election. There are 5 members of the PMC. Terms are 1 year.

The PMC doesn't have specific roles or a chairperson.

At the moment, IRC is our main communication channel. PMC members should be
present in our `#voxpupuli-pmc` channel on [libera.chat](https://libera.chat).
Also we have some gpg-encrypted credentials and a few repositories require
gpg-signed commits, so a PMC member also needs a gpg key.

#### PMC Onboarding

After people got elected, they need to be onboarded by a former PMC member:

* Add the new people to the [Project-Maintainers](https://github.com/orgs/voxpupuli/teams/project-maintainers) group on GitHub, remove former PMC members if desired (this role is not exclusively for PMC members)
* In the [organisation settings](https://github.com/orgs/voxpupuli/people?query=role%3Aowner), set former PMC members from `Owner` to `Member`, update new PMC members to `Owner`
* Try to establish a GPG relationship between all PMC members
    * If possible use [WKD](https://wiki.gnupg.org/WKD) to distrubte GPG keys
    * Upload keys to [keyserver.ubuntu.com](https://keyserver.ubuntu.com/) and [keys.openpgp.org](https://keys.openpgp.org/)
    * In case people meet in person, for example during a conference, sign GPG keys
* Add new GPG keys to [our plumbing repository](https://github.com/voxpupuli/plumbing/blob/master/recipients.txt) and remove old keys
* Check that the key is valid for at least one year (one PMC term)
* Ensure that everybody can [decrypt and encrypt](https://github.com/voxpupuli/plumbing#gpg) our secrets
* Add the mail address from all new members to [our pmc@voxpupuli.org](https://app.mailgun.com/app/lists/pmc%40voxpupuli.org) mailing list and remove former members
* Promote every PMC member to an [owner](https://groups.io/g/voxpupuli/members?p=,mods,,0,0,0,0) for our mailing list
* Ensure that they have a bouncer in at least `#voxpupuli-pmc` and `#voxpupuli` on [Libera.Chat](https://libera.chat/)
* Configure a [cloak](https://libera.chat/guides/cloaks) if desired (voxpupuli/pmc/$nickname)
* Add them to the admin list for the `#voxpupuli` IRC channel, remove former PMC members
    * `/msg ChanServ flags #voxpupuli` to list flags
    * `/msg Chanserv flags #voxpupuli $nick -*` to remove all permissions
    * `/msg Chanserv flags #voxpupuli $nick +AFRefiorstv` to grant all permissions
* Add them as admin at [opencollective.com](https://opencollective.com/vox-pupuli/admin/team)
* Each PMC member should create an Hetzner Account at [Hetzner](https://accounts.hetzner.com/login)
* Invite each PMC member to the Hetzner Cloud project, remove former PMC members
* Add each PMC member at [our GitHub sponsors page](https://github.com/sponsors/voxpupuli/), remove former PMC members
* Each PMC member should create a [Docker](https://hub.docker.com/) account
* Invite each PMC member to the `owner` team at Docker, remove former PMC members

### Specialized Roles

There are three officer roles in Vox Pupuli. They can all be held by the same
person (though this isn't ideal), as long as the work is getting done. They
can have any other role in the organization, including being on the PMC. The
PMC is responsible for requesting volunteers and appointing a volunteer to the
role. Appointments last until either the officer steps down, or the unlikely
and unfortunate situation where the PMC removes the officer. The PMC can add
more officer roles as it sees fit by modifying this document.

1) Election Officer: The election officer can be on the PMC, as long as they are not running in the election they are officiating
  * The election officer will be a member of the `election-officer` GitHub group which grants him write access to the plumbing repository.

2) Security Officer: This is the point of contact for external or internal security issues, this person has a published gpg key, and will be the main point of contact for CVE numbers and such

3) Communications Officer: This is the main point of contact for external and internal publicity and marketing efforts and requests

## Lazy Consensus

Lazy consensus is a very important concept within the project. It is this
process that allows a large group of people to efficiently reach
consensus, as someone with no objections to a proposal need not spend time
stating their position, and others need not spend time reading such statements.

For lazy consensus to be effective, it is necessary to allow at least 72 hours
before assuming that there are no objections to the proposal. This requirement
ensures that everyone is given enough time to read, digest and respond to the
proposal. This time period is chosen so as to be as inclusive as possible of
all participants, regardless of their location and time commitments.

We do require one affirmative vote as part of the Lazy consensus model.

Vox Pupuli has a public mailing list. This list is low-traffic and is for
discussion of anything Vox Pupuli related. Controversial patches, nominations
for promotion, policy shifts, and anything else can be brought to this list.
All contributors and PMC members are expected to be on this list. Release
announcements will go out to this list, but will have ``[Release]`` in the
subject line so they can be easily filtered.

When the lazy consensus model does not converge on a decision or outcome, the
PMC can step in and choose a path.

## PMC Removal

A member of the PMC can be removed before the end of their 1 year term by a
supermajority (2/3) vote of the PMC. This can happen for a number of reasons,
but the expected reason is following a Code of Conduct violation incident. Any
report of problematic behaviour of PMC members will trigger an investigation
and can trigger a vote. A report of the incident and actions taken (if any)
will be published for the public. A member of the PMC can step down at any
time.

If a vacancy is left on the PMC, the PMC can optionally instruct the elections
officer to perform another election or wait until the next election cycle.

## Transparency

Building community trust in the governance of an open-source project is vital
to its success. To that end, decision making must be done in a transparent,
open fashion. No decisions about the project’s direction, bug fixes or features
may be done without community involvement and participation. Discussions must
begin at the earliest possible point on a topic; the community’s participation
is vital during the entire decision-making process.

## Election

The details of the election process are up to the elections officer, subject to
approval by the PMC. The users, collaborators, and contributors all get to vote
in the election.
