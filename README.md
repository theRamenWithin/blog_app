# README

## Description



## User stories

As a user I want to create and edit a profile page
As a user I want login and logout
As a user I want to see basic post metrics (sprinkles)

As a writer I can make and view my own posts
As a writer I want to make private and public posts
As a writer I want to edit past posts
As a writer I want to delete past posts
As a writer I want to attach files to a post
As a writer I want to be able to embed HTML content (sprinkles)

As a reader I want to see others peoples posts
As a reader I want to search posts using keywords/tags
As a reader I want to comment on other posts
As a reader I want to view other users profile page
As a reader I want to be "Like" a post
As a reader I want to be able to quick reaction with emoji to a post (sprinkles)

As an administrator I want to be view, edit and delete any user posts
As an administrator I want to see statistics on post metrics like times keywords used, post of top likes (sprinkles)

## ERD

Users - Table
first_name 
last_name
DOB :date
username
email
avatar (optional)
admin? :boolean
post_id :references (optional)

Posts - Table
title
body :text
likes :integer (optional)
reaction :hstore (optional)
tags :array (optional)
attachment_id :references (optional)
comment_id :references (optional)

Attachments - Table
file_name
object (stored in S3)
post_id :references

Comments - Table
body :text
likes :integer (optional)
post_id :references
user_id :references

# Gems

Devise
CanCan
Bootstrap
Simple_form 