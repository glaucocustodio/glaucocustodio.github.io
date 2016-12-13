---
layout: post
status: publish
published: true
title: "Leveraging Rails' Money Type"
date: '2016-12-13 18:12:02 -0200'
categories:
- Ruby
tags:
- rails
- postgresql
comments: []
---

<p>You have a Rails application and need to persist some data through a form which has a JavaScript money mask.</p>

<p>Here in Brazil for instance, we format money this way: R$ 1.000,90.</p>

<p>Given this is a string and we need to save as decimal or integer, we have to convert.</p>

{% highlight ruby %}
class String
  # Convert a money string ('R$ 10.000,00') to float (10000.0)
  def clean_money
    self.gsub(/[^\d,]/, '').gsub(',', '.').strip.to_f
  end
end
{% endhighlight %}

<p>The <code>clean_money</code> above solves the problem, however, we always have to call it before set our data in the model (not that DRY).</p>

<p>Looking for a better way to do it I found two good solutions:</p>

<ul>
  <li>Create your column as <code>money</code> type (Rails 4.2+)</li>
  <li>Use the new attributes API (Rails 5+)</li>
</ul>

<p>Both solutions only work if you are using PostgreSQL.</p>

<h2>Column as money type</h2>

{% highlight ruby %}
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.money :price
    end
  end
end
{% endhighlight %}

<h2>Attributes API</h2>

{% highlight ruby %}
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.decimal :price
    end
  end
end
{% endhighlight %}

{% highlight ruby %}
class Product < ApplicationRecord
  attribute :price, :money # will behave like money type
end
{% endhighlight %}

<p>You just need it, really.</p>

<p>Then we can pass strings straight to our models:</p>

{% highlight ruby %}
Product.create(price: "R$ 50,80")
puts Product.last.price
# 50.8

Product.create(price: "$ 10,000.80")
puts Product.last.price
# 10000.8
{% endhighlight %}

<p>See you.</p>
