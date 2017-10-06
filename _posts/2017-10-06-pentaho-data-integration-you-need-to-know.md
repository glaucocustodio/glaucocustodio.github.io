---
layout: post
status: publish
published: true
title: "Pentaho Data Integration: You Need to Know"
categories:
- Data
---

<p>Today I wanna share something nice I've been using: Pentaho Data Integration (aka Kettle).</p>

<p>As the name says, PDI is a powerful tool for manipulating and integrating data accross multiple souces (databases, files, APIs, CRMs etc).</p>

<p>Imagine you have two applications (products) with distinct databases: one PostgreSQL and other SQL Server.</p>

<p>How can we cross customers from the two databases?</p>

<p>This process of extracting, transforming and loading data is called ETL, and PDI is meant for that.</p>

<h2>How it works</h2>

<p>The building blocks of PDI are: job and transformation.</p>

<p>A transformation is where the magic happens and a job is a set of transformations.</p>

<p>Both can be stored locally or in a remote repository accessible to all your teammates.</p>

<p>You can also have a remote server responsible for running your jobs in a scheduler like crontab.</p>
