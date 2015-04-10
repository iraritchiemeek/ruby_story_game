class StoryView

  def self.render_instructions
    puts
    puts "Story String is retro-loading..."
    sleep(3)
    puts
    puts
    puts "███████╗████████╗ ██████╗ ██████╗ ██╗   ██╗    ███████╗████████╗██████╗ ██╗███╗   ██╗ ██████╗
██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗╚██╗ ██╔╝    ██╔════╝╚══██╔══╝██╔══██╗██║████╗  ██║██╔════╝
███████╗   ██║   ██║   ██║██████╔╝ ╚████╔╝     ███████╗   ██║   ██████╔╝██║██╔██╗ ██║██║  ███╗
╚════██║   ██║   ██║   ██║██╔══██╗  ╚██╔╝      ╚════██║   ██║   ██╔══██╗██║██║╚██╗██║██║   ██║
███████║   ██║   ╚██████╔╝██║  ██║   ██║       ███████║   ██║   ██║  ██║██║██║ ╚████║╚██████╔╝
╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝   ╚═╝       ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝
                                                                                              "
    puts
    puts "String together any sentence you choose. Each person must contribute a sentence to the string.\nOthers, don't look when you're not typing!"
    puts
    puts "When you want to end your story simply type 'the end' to read the sum of your highly dubious input."
  end

  def self.render_start
    puts
    puts "The first excellently creative mind should add their contribute their sentence here: "
    puts
  end

  def self.render_prompt end_word
    puts "Is the next fantabulous typist ready? The last sentence ended: ... '#{end_word}'."
    puts
  end

  def self.render_story story
    story.each { |line| p line.sentence }
  end
end

# StoryView.render_instructions
# StoryView.render_start
# StoryView.render_prompt("dinosaur")

