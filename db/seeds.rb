require "open-uri"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
Course.destroy_all
User.destroy_all

# User.create!(first_name: "Younes", last_name: "ST", email: "younes@lewagon.com", password: "rails123")
# Course.create!(title: "Effective Communication Mastery", description: " This course focuses on enhancing verbal and non-verbal communication skills in professional settings. Participants will learn to express ideas clearly, listen actively, and adapt communication styles to different audiences.", lenght: 10)

def add_image(model, url)
  file = URI.open(url)
  model.course_images.attach(io: file, filename: "nes.png", content_type: "image/png")
  model.save
end

user1 = User.create!(
  first_name: "FZ",
  last_name: "Elkebch",
  email: "elkebch@lewagon.com",
  password: "123456"
)

user2 = User.create!(
  first_name: "Baker",
  last_name: "MZMR",
  email: "baker@lewagon.com",
  password: "123456"
)

user3 = User.create!(
  first_name: "Younes",
  last_name: "ST",
  email: "younes@lewagon.com",
  password: "123456"
)

# Create Courses
course1 = Course.create(
  title: "Critical Thinking and Problem Solving",
  description: "This course emphasizes developing critical thinking skills to analyze situations, identify problems, and implement effective solutions. It covers techniques for decision-making and problem-solving in various contexts.",
  length: 4,
  image_description: ["In this introductory slide, a compelling visual representation of a complex problem, such as a challenging puzzle or a tangled knot, sets the tone for the presentation. Accompanying this, there is an image of a person engaged in thoughtful brainstorming, emphasizing the idea that problem-solving involves tackling intricate challenges. This slide aims to capture the audience's attention and convey the essence of problem-solving as a skill requiring creativity and critical thinking.",
     "Provides a structured overview of the six steps involved in effective problem-solving. To enhance understanding and engagement, an infographic or diagram is included, featuring visually appealing icons or illustrations corresponding to each step. This visual aid helps break down the process into manageable components, making it easier for the audience to follow and grasp the key elements of problem-solving.",
      "The critical thinking aspect of problem-solving, utilizing an image of a brain with interconnected neurons. This symbolic representation underscores the interconnected nature of critical thinking, with additional icons or images representing analysis, evaluation, and decision-making. The goal is to highlight the cognitive processes involved in approaching problems critically and systematically.",
       "Emphasizes the role of creativity in problem-solving by featuring an illustration of a lightbulb or a vibrant, imaginative scene. This visual representation aims to convey the link between creative thinking and finding unique solutions to problems. By showcasing the spark of creativity, this slide encourages the audience to embrace innovative approaches when tackling challenges.",
        "The importance of effective communication in the problem-solving process. Graphics depicting a communication network, such as interconnected speech bubbles or a flowchart, emphasize the need for clear and coherent communication. This visual representation underscores the idea that successful problem-solving relies on the ability to convey ideas, collaborate, and share information effectively.",
      "The concept of problem-solving into real-world contexts. Featuring images of diverse scenarios, case studies, or professionals collaborating, this slide illustrates practical applications of problem-solving skills. By showcasing real-world situations where individuals successfully implement solutions and overcome challenges, this slide encourages the audience to apply the acquired knowledge in their own practical experiences."]
)

add_image(course1, "https://res.cloudinary.com/djesiex6g/image/upload/v1706801238/01-Problem-solving/nnufdhnrmotc67vo03nd.png") #1
add_image(course1, "https://res.cloudinary.com/djesiex6g/image/upload/v1706801235/01-Problem-solving/tnnbydepsr2izkyvrafd.png") #2
add_image(course1, "https://res.cloudinary.com/djesiex6g/image/upload/v1706801234/01-Problem-solving/s0zgqyoyuvtelzclcyvq.png") #3
add_image(course1, "https://res.cloudinary.com/djesiex6g/image/upload/v1706801234/01-Problem-solving/pedwfolfpeekudkpl6zo.png") #4
add_image(course1, "https://res.cloudinary.com/djesiex6g/image/upload/v1706801234/01-Problem-solving/qgncirsywdqzq9vymvxe.png") #5
add_image(course1, 'https://res.cloudinary.com/djesiex6g/image/upload/v1706801235/01-Problem-solving/rf0niajrwvtsmotmi1va.png') #6

course2 = Course.create!(
  title: "Effective Communication Skills",
  description: "A course designed to enhance verbal and written communication skills. It may cover elements like active listening, clear articulation, and adapting communication styles for different audiences.",
  length: 8,
  image_description: ["Begin with an engaging image that represents communication (e.g., speech bubbles, a handshake). Introduce the importance of effective communication in personal and professional contexts. Highlight how communication skills contribute to building relationships and achieving success.", "Break down the key elements of effective communication:
    - Clarity: Use visuals representing clear messaging.
    - Conciseness: Show an image or icon representing brevity and to-the-point communication.
    - Active Listening: Illustrate attentive listening with an image of a person actively engaged in a conversation.
    - Feedback: Include a visual of a feedback loop to emphasize the importance of receiving and providing feedback.",
     "Use split visuals to showcase verbal (speech, words) and non-verbal (body language, gestures) communication. Explain how both aspects contribute to effective communication and how they should align to avoid mixed messages.",
      "Feature images of individuals showing empathy, such as someone comforting another or actively understanding a colleague's perspective. Discuss the role of empathy in fostering positive communication and building strong relationships.",
       "Illustrate common barriers to communication (e.g., noise, language differences) with visuals. Discuss strategies to overcome these barriers, including active listening, asking for clarification, and adapting communication style to the audience.",
        " Provide practical tips for effective communication, such as using 'I' statements, choosing the right communication channel, and adjusting communication style based on the audience. Use icons or images to represent each tip for visual appeal."]
)

add_image(course2, 'https://res.cloudinary.com/djesiex6g/image/upload/v1706799234/02-communication/rj8ba76rgzbv8y9nlbtg.png') #1
add_image(course2, 'https://res.cloudinary.com/djesiex6g/image/upload/v1706799235/02-communication/sun09bs4rn12m15v9zif.png') #2
add_image(course2, "https://res.cloudinary.com/djesiex6g/image/upload/v1706799234/02-communication/vh8etn4ly3c8onwpill7.png") #3
add_image(course2, "https://res.cloudinary.com/djesiex6g/image/upload/v1706799234/02-communication/ofkheov8nyjvkvnamdua.png") #4
add_image(course2, "https://res.cloudinary.com/djesiex6g/image/upload/v1706799234/02-communication/l9rtzlrunv5yfnc2ldvr.png") #5
add_image(course2, "https://res.cloudinary.com/djesiex6g/image/upload/v1706799235/02-communication/y2kxlez04b8ytkuhkkib.png") #6

course3 = Course.create!(
  title: "Time Management and Prioritization",
  description: "Focused on helping individuals prioritize tasks, set goals, and manage their time efficiently. This course addresses strategies for dealing with time constraints and improving overall productivity.",
  length: 3,
  image_description: ["introduces the presentation with the captivating title Mastering Time Management and Prioritization and a complementary subtitle, Essential Soft Skills for Enhanced Productivity. Visual elements include clocks, calendars, or images symbolizing time, providing a thematic backdrop for the entire presentation.",
     "Why Time Management Matters is the focus of the second slide. It delves into the critical role of time management in both personal and professional success, emphasizing its impact on productivity and stress levels. A visual aid compares well-managed time to poorly managed time, creating a compelling narrative.",
      "The Key Principles to Master in effective time management. It covers setting SMART goals, prioritizing tasks based on urgency and importance, and incorporating time-blocking and scheduling. An accompanying infographic or diagram enhances understanding of these foundational principles.",
       "Identifying and Overcoming Time Wasters, the fourth slide addresses the need to recognize common time-wasting activities. It provides strategies to overcome procrastination and distractions. Visual aids, such as illustrations or icons representing common time-wasting activities, enhance the audience's understanding.",
       "Effective Tools for Time Management, introduces digital tools and apps for task management, alongside techniques for efficient delegation. Visual elements like screenshots or icons of popular time management tools contribute to a practical understanding of their implementation.",
        "Putting Knowledge into Action, emphasizes translating gained knowledge into a practical action plan. It encourages the audience to develop a personalized time management strategy, create an actionable plan for implementation, and highlights the importance of continuous improvement. Visual aids such as checklists, progress charts, or a roadmap provide a tangible and motivational conclusion to the presentation"]
)

add_image(course3, "https://res.cloudinary.com/djesiex6g/image/upload/v1706800187/03-timemanagement/ifzz5hlpougaupleyaip.png") #1
add_image(course3, "https://res.cloudinary.com/djesiex6g/image/upload/v1706800186/03-timemanagement/voiq5i3m1tuziphj894s.png") #2
add_image(course3, "https://res.cloudinary.com/djesiex6g/image/upload/v1706800186/03-timemanagement/clr4v1t0omqineucdqgc.png") #3
add_image(course3, "https://res.cloudinary.com/djesiex6g/image/upload/v1706800192/03-timemanagement/rtaxsoavastqajcj8yxl.png") #4
add_image(course3, "https://res.cloudinary.com/djesiex6g/image/upload/v1706800186/03-timemanagement/qm61jvpjvlchxeopwk8h.png") #5
add_image(course3, "https://res.cloudinary.com/djesiex6g/image/upload/v1706800188/03-timemanagement/d4u2pmbmpn54svc5msek.png") #6

# Create Quizzes with Questions for Course 1
quiz1 = Quiz.create!(
  enrollment_date: Date.today,
  user: user1,
  course: course1
)

Question.create!(
  quiz: quiz1,
  question_text: "What visual representation is suggested for Introduction to Problem Solving?",
  choice_one: "A picture of a flower garden",
  choice_two: "A maze with a person thinking nearby",
  choice_three: "A city skyline at night",
  choice_four: "A close-up of a human eye",
  correct_answer: "A maze with a person thinking nearby"
)

Question.create!(
  quiz: quiz1,
  question_text: "What is the recommended format for illustrating the six steps of problem-solving?",
  choice_one: "A video demonstration",
  choice_two: "An infographic or diagram with icons",
  choice_three: "A series of written paragraphs",
  choice_four: "A sequence of abstract art images",
  correct_answer: "An infographic or diagram with icons"
)

Question.create!(
  quiz: quiz1,
  question_text: "Which element is emphasized in the visual representation suggested for Critical Thinking in Problem Solving?",
  choice_one: "A tree with branches",
  choice_two: "A visual representation of interconnected neurons",
  choice_three: "A busy city street",
  choice_four: "A waterfall with cascading water",
  correct_answer: "A visual representation of interconnected neurons"
)

# Create Quizzes with Questions for Course 2
quiz2 = Quiz.create!(
  enrollment_date: Date.today,
  user: user2,
  course: course2
)

Question.create!(
  quiz: quiz2,
  question_text: "What does the third slide, 'Verbal and Non-Verbal Communication,' emphasize?",
  choice_one: "The importance of written communication",
  choice_two: "The role of body language and gestures in effective communication",
  choice_three: "Exploring different languages",
  choice_four: "The history of verbal communication",
  correct_answer: "The role of body language and gestures in effective communication"
)

Question.create!(
  quiz: quiz2,
  question_text: "Which of the following is NOT mentioned as a key element of effective communication in the second slide?",
  choice_one: "Clarity",
  choice_two: "Conciseness",
  choice_three: "Active Listening",
  choice_four: "Problem Solving",
  correct_answer: "Problem Solving"
)

Question.create!(
  quiz: quiz2,
  question_text: "What is the primary focus of the first slide, 'Introduction to Effective Communication'?",
  choice_one: "Discussing communication in personal life only",
  choice_two: "Analyzing the importance of communication in professional contexts",
  choice_three: "Exploring various communication channels",
  choice_four: "Showcasing images of famous communicators",
  correct_answer: "Analyzing the importance of communication in professional contexts"
)

# Create Quizzes with Questions for Course 3
quiz3 = Quiz.create!(
  enrollment_date: Date.today,
  user: user3,
  course: course3
)

Question.create!(
  quiz: quiz3,
  question_text: "What is the focus of the fifth slide, 'Tools and Techniques'?",
  choice_one: "Exploring ancient timekeeping methods",
  choice_two: "Introducing digital tools for effective task management",
  choice_three: "Discussing the history of calendars",
  choice_four: "Promoting multitasking",
  correct_answer: "Introducing digital tools for effective task management"
)

# Question 2
Question.create!(
  quiz: quiz3,
  question_text: "Why is effective time management important for personal and professional success?",
  choice_one: "To encourage procrastination",
  choice_two: "To increase stress levels",
  choice_three: "To reduce productivity",
  choice_four: "To enhance productivity and reduce stress",
  correct_answer: "To enhance productivity and reduce stress"
)

Question.create!(
  quiz: quiz3,
  question_text: "What is a key principle discussed in the third slide, 'Principles of Time Management'?",
  choice_one: "Setting unrealistic goals",
  choice_two: "Prioritizing tasks based on personal preference",
  choice_three: "Time-blocking and creating schedules",
  choice_four: "Avoiding the use of digital tools",
  correct_answer: "Time-blocking and creating schedules"
)

puts "Seed data created successfully!"
