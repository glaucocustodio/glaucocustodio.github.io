---
layout: post
status: publish
published: true
title: "Pentaho Data Integration: A Tool to Have on Your Toolbelt"
categories:
- Data
tags:
- data
- integration
---

<p>Today I wanna share something nice I've been using: <a href="http://www.pentaho.com/product/data-integration" rel="external nofollow" target="_blank">Pentaho Data Integration</a> (aka Kettle).</p>

<p>As the name says, PDI is a powerful tool for manipulating and integrating data accross multiple souces (databases, files, APIs, CRMs etc).</p>

<p>This process of extracting, transforming and loading data is called ETL, and PDI is meant for that.</p>

<h2>How it works</h2>

<p>The building blocks of PDI are: job and transformation.</p>

<p>A transformation is where the magic happens and a job is a set of transformations.</p>

<p>Both can be stored locally or in a remote repository accessible to all your teammates.</p>

<p>You can also have a remote server responsible for running your jobs in a scheduler like crontab.</p>

<h2>Setup</h2>

<p>PDI is a paid product, but they provide a free community edition (CE), which is amazing by the way (I've been using just that so far).</p>

<p>There are many CE versions available, enter <a href="https://sourceforge.net/projects/pentaho/files/Data%20Integration/" rel="external nofollow" target="_blank">here</a> and download the one you want (generally the last one).</p>

<p>PDI requires Java Runtime Environment (JRE), so make sure it's installed.</p>

<p>PDI does not require installation. Simply unpack the zip file into a folder of your choice and click <code>Data Integration</code> to open.</p>

Check <a href="https://wiki.pentaho.com/display/EAI/01.+Installing+Kettle" rel="external nofollow" target="_blank">this link</a> for more info.

<h2>Use case: crossing data</h2>

<p>Imagine you have two applications with distinct databases: one PostgreSQL (A) and other SQL Server (B) with the following tables:</p>

<a href="{{ site.baseurl }}/assets/two-tables.png">
  <img src="{{ site.baseurl }}/assets/two-tables.png"/>
</a>

<p>How can we cross customers from the two databases using the email attribute?</p>

<p>First, we need to create a transformation.</p>

<p>Open PDI and create a new transformation (File -> New -> Transformation).</p>

<a href="{{ site.baseurl }}/assets/pentaho-data-integration-transformation.png">
  <img src="{{ site.baseurl }}/assets/pentaho-data-integration-transformation.png"/>
</a>

<p>This is how a blank transformation looks like.</p>

<p>In the sidebar we have all the available steps and in the big empty space, is where we drag and drop the steps we wanna use.</p>

<p>To join the tables, we need to input them first, so drag a <code>Table input</code> step to the transformation, double-click it and type the SQL query you wanna execute.</p>

<p>You will have to create a database connection first, just click New in front of Connection and enter the credentials.</p>

<a href="{{ site.baseurl }}/assets/pdi-table-input.png">
  <img src="{{ site.baseurl }}/assets/pdi-table-input.png"/>
</a>

<div class="note">We need to order by email because this field will be used to join the tables.</div>

<p>Drag another <code>Table input</code> for the SQL Server database and do the same.</p>

<a href="{{ site.baseurl }}/assets/pdi-multiple-table-input.png">
  <img src="{{ site.baseurl }}/assets/pdi-multiple-table-input.png"/>
</a>

<p>Now we need to join them, under the <code>Joins</code> folder, drag the <code>Merge Join</code> and select the steps, join type and the keys to join (in our case, email).</p>

<a href="{{ site.baseurl }}/assets/pdi-merge-join.png">
  <img src="{{ site.baseurl }}/assets/pdi-merge-join.png"/>
</a>

<p>Once you are done, run the transformation (click the play button or Action -> Run). It will ask for a name, fill and save.</p>

<a href="{{ site.baseurl }}/assets/pdi-execution-results.png">
  <img src="{{ site.baseurl }}/assets/pdi-execution-results.png"/>
</a>

<p>In Execution Results you can see a bunch of details related to your run, in Preview data, we can check the merge was done as expected.</p>

<p>Note that we are not outputting the result of our transformation (to a .xlsx file for example), but you could do this by dragging a <code>Output</code> step and setting it as you wish.</p>

<h2>Wrapping up</h2>

<p>Pentaho Data Integration is a fantastic tool that will open you a million of possibilities.</p>

<p>This post is just to introduce it to you. Explore others steps and have fun.</p>
