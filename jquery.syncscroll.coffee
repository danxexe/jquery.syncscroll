jQuery.fn.syncScroll = (elements, options = {}) ->

  return if @length < 1

  $ = jQuery

  @on 'scroll', ->
    @$ = $(@)

    top = @$.scrollTop()

    $(elements).each ->
      _$ = $(@)

      offset = options['offset']?(_$) ? options['offset'] ? 0
      ratio = options['ratio']?(_$) ? options['ratio'] ? 1

      if top >= offset
        _delta = (top - offset) * ratio
        _$.scrollTop(_delta)
      else
        _$.scrollTop(0)