class App.Views.FieldSorter extends Backbone.View

  el: 'body'

  initialize: ->
    @initGroupSort()
    @initFieldSort()

  initGroupSort: ->
    for group in $('#page-content')
      sortable = $(group).sortable
        toArray:
          attribute: "data-id"
        stop: (e, ui) ->
          ids = $(this).sortable('toArray', { attribute: 'data-id' })
          for id, idx in ids
            form = $("article.template-group[data-id='#{id}']")
              .find('form.group-position').first()
            unless parseInt(form.find('input.position').first().val()) == idx
              form.find('input.position').first().val(idx) 
              $.ajax
                type: "PATCH",
                url: form.attr('action'),
                data: form.serialize(),
                dataType: 'json'

  initFieldSort: ->
    for section in $('.data-table')
      sortable = $(section).sortable
        placeholder: 'sortable-placeholder'
        toArray:
          attribute: "data-id"
        stop: (e, ui) ->
          ids = $(this).sortable('toArray', { attribute: 'data-id' })
          for id, idx in ids
            form = $("article.form-field[data-id='#{id}']")
              .find('form.field-position').first()
            unless parseInt(form.find('input.position').first().val()) == idx
              form.find('input.position').first().val(idx) 
              $.ajax
                type: "PATCH",
                url: form.attr('action'),
                data: form.serialize(),
                dataType: 'json'
