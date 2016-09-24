# Distributed Workflow Design

Goal: Create a system for:

- Synchronizing development work on multiple machines
- Publishing tutorials

Tech stack:

- Using github.com
- Using webfaction.com
- `git`
- `rsync`
- `ssh`
- Ruby command line scripts
- Ruby on Rails, Swift macOS & iOS apps and extensions for the Content Management System
- Automatically generate tutorial fragments from a folder of `.md` & `Screen Shot yyyy-mm-dd at h.mm.ss AM/PM.png` content, and 1 or more files &/or folder structures that dictate formatting and presentational requirements.
- User can upload images. Image upload lets user specify the tutorial fragment that will use these images.

## Documenting development using Xcode

Read a tutorial step.

Performing the tutorial step might involve:

- git operations
- creating a new Xcode project
- modifying `.swift` files
- creating new `.swift` files
- modifying code
- writing new code
- taking a screen capture using `shift-cmd-3` &/or `shift-cmd-4`
