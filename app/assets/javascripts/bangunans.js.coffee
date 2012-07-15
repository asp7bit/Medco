# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$("#bangunans th a, #bangunans .pagination a").live "click", ->
  $.getScript @href
  false

$("#bangunans_search input").keyup ->
  $.get $("#bangunans_search").attr("action"), $("#bangunans_search").serialize(), null, "script"
  false
