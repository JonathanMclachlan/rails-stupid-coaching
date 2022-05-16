require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "Saying Hello yields a grumy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    take_screenshot

    assert_text "I don't care, get dressed and go to work!"
  end

  test "Writing a q results in evil response" do
    visit ask_url
    fill_in "question", with: "This is a q??"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end
end
