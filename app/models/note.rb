class Note < ApplicationRecord
  belongs_to :therapist

  before_save :decode_note

  def decode_note
    self.error = get_errors(content)
    self.total = get_total(content)
    self.successful = get_success(content)
    self.unsuccessful = get_unsuccess(content)
    self.goal = get_goal(content)
    self.prompting = get_prompting(content)
  end

  def get_errors(note)
    if matches = note.match(/errors:(\S*) (.*)/)
      matches[2].split('\n').first
    else
      ""
    end
  end

  def get_prompting(note)
    note.split('cues')[0].split(' ')[-1].delete! '-'
  end

  def get_total(note)
    note.split('%').first.chars.last(2).join
  end

  def get_success(note)
    note.count('+')
  end

  def get_unsuccess(note)
    note.count('-')
  end

  def get_goal(note)
    note.match(/[A-Z]{3}[0-9]/)
  end
end
