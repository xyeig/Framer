describe "ScrollComponent", ->

  it "should apply constructor options", ->

    instance = new ScrollComponent (scrollHorizontal: false)
    instance.scrollHorizontal.should.be.false

  # Currently fails:
  it.skip "should keep scrollHorizontal value on copy", ->

    instance = new ScrollComponent (scrollHorizontal: false)
    instance.scrollHorizontal.should.be.false

    copy = instance.copy()
    copy.scrollHorizontal.should.be.false

  describe "wrap", ->

    # Currently fails:
    it.skip "should foward constructor options", (done) ->
      options =
        scrollVertical: false
        name: "is a name"

      scroller = new ScrollComponent options
      scroller.scrollVertical.should.equal(options.scrollVertical)
      scroller.name.should.equal(options.name)

      layer = new Layer()

      Framer.Loop.once "render", ->
        scroller = ScrollComponent.wrap layer, options
        scroller.scrollVertical.should.equal(options.scrollVertical)
        scroller.name.should.equal(options.name)
        done()
