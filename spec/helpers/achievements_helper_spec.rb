require 'spec_helper'

describe AchievementsHelper do
  let(:achievement) {
    Achievement.new(full_description: "full", censored_description: "censored")
  }

  describe "#public_description_for_achievement" do

    context "with an achievement that has been won" do

      it "returns the full description" do
        achievement.won_at = 1.day.ago
        helper.public_description_for_achievement(achievement).should == "full"
      end

    end

    context "with an achievement that has not been won" do

      context "with a secret achievement" do

        it "returns [ A SECRET MAN WAS NOT MEANT TO KNOW ]" do
          achievement.secret = true
          helper.public_description_for_achievement(achievement).should ==
            "[ A SECRET MAN WAS NOT MEANT TO KNOW ]"
        end

      end

      context "with an achievement with no censored description" do

        it "returns the full description" do
          achievement.censored_description = nil
          helper.public_description_for_achievement(achievement).should == "full"
        end

      end

      context "with an achievement with a censored description" do

        it "returns the censored description" do
          helper.public_description_for_achievement(achievement).should == "censored"
        end

      end

    end

  end

end
