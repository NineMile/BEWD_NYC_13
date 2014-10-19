require_relative 'lib/question_response'
require_relative 'lib/survey'
require 'pry'



survey = Survey.new
client_info = Survey.new

customer_focus = QuestionResponse.new
operations_focus = QuestionResponse.new
planning_focus = QuestionResponse.new
process_focus = QuestionResponse.new
improvement_focus = QuestionResponse.new
value_focus = QuestionResponse.new
management_focus = QuestionResponse.new
people_focus = QuestionResponse.new
company_focus = QuestionResponse.new

# Create more questions

customer_focus.question = "How much do you focus on your customer?"
customer_focus.keywords = ['include', 'positive', 'value', 'diverse', 'solutions', 'satisfy', 'satisfaction']

operations_focus.question = "What percentage of enterprise resources would you say is allocated to the end-user enhancement??"
operations_focus.keywords = ['preponderance', 'half', 'majority', 'considerable']

planning_focus.question = "How do you plan work that needs to get done?"
planning_focus.keywords = ['near', 'long', 'short', 'monitor', 'measure', 'metrics', 'objectives', 'plan', 'schedule', 'time']

process_focus.question = "How do you manage process flow?"
process_focus.keywords = ['systematic', 'measure', 'open', 'value', 'plan', 'dependencies', 'diverse', 'monitor', 'integrate',]

improvement_focus.question = "How do you add value to and minimize in-efficiencies from wherever they may exist?"
improvement_focus.keywords = ['data', 'measure', 'metrics', 'analyze', 'analysis', 'value', 'systematic', 'integrate', 'include',]

value_focus.question = "On what operational basis do you make value-add improvements internal processess and procedures?"
value_focus.keywords = ['data_driven','fact', 'measure', 'metrics', 'analyze', 'analysis', 'value', 'systematic',]

management_focus.question = "How do you equip your team to handle both processual and project-related challenges? "
management_focus.keywords = ['open', 'objectives','strategy', 'inculde', 'inclusive', 'plan', 'diverse', 'innovative']

people_focus.question = "How do you recruit, develop, and maintain human capital?"
people_focus.keywords =  ['data', 'rate', 'monitor', 'training', 'goal', 'objectives', 'review', 'process', 'semi-annual']

company_focus.question = "Where do you see your company in the next ten years?"
company_focus.keywords = ['service', 'community', 'industry']

#Define more questions

puts "Welcome to LeanVote!!"


client_info.ask

puts "Please answer the following questions:"
customer_focus.ask
operations_focus.ask
planning_focus.ask
process_focus.ask
improvement_focus.ask
value_focus.ask
management_focus.ask
people_focus.ask
company_focus.ask

#Ask more questions

survey.questions << customer_focus
survey.questions << operations_focus
survey.questions << planning_focus
survey.questions << process_focus
survey.questions << improvement_focus
survey.questions << value_focus
survey.questions << management_focus
survey.questions << people_focus
survey.questions << company_focus

# Add those questions to the survey

puts "Thank you very much for participating!"
puts "Your score is: #{survey.score}"