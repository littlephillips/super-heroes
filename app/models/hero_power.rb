class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power

    validates :strength, inclusion: ['Strong','Weak','Average']

    # VALID_STRENGTH = (Strong, weak, Average)
    # validates_inclusion_of :strength, :in => VALID_STRENGTH

end
