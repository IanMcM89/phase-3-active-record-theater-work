class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        actors = []

        self.auditions.all.each do |audition|
            actors << audition.actor
        end

        actors
    end

    def locations
        locations = []

        self.auditions.all.each do |audition|
            locations << audition.location
        end

        locations
    end

    def lead
        is_hired = auditions.find_by(hired: true)
        
        is_hired ? is_hired : 'no actor has been hired for this role'
    end

    def understudy
        is_understudy = auditions.where(hired: true)[1]

        is_understudy ? is_understudy : 'no actor has been hired for understudy for this role'
    end
end