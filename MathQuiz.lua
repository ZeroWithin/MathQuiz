local points = 0
local streak = 0
local right = "Correct! +1 point!"
local wrong = "Incorrect! -1 point!"
local bonus = "Streak of 5 reached! +1 point!"
local qst = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
qst[1], qst[2], qst[3], qst[4], qst[5], qst[6], qst[7], qst[8], qst[9], qst[10] = "Question #1: 3 * 3", "Question #2: 100 / 4", "Question #3: 2 ^ 5", "Question #4: 5x = 45 + 5", "Question #5: 10 is to 25 as 50 is to x. Find x.", "Question #6: 2 + (5 ^ 2) * 2", "Question #7: (3! + 5!) / 2", "Question #8: 4! * [4 - (32 - 14)]", "Question #9: ([3 ^ 4] / 3 + [5! - 50 / 2])", "Question #10: 24 is to 30 as 4 is to x. Find x."

local function answerCorrect()
	correct = true
	points = points + 1
	pointget = "You now have ".. points .." points(s)!"	
	print("".. right .." ".. pointget)
end
local function answerIncorrect()
	correct = false
	points = points - 1
	if points < 0 then
		points = 0
	end
	pointloss = "You now have ".. points .." points(s)!"
	print("".. wrong .." ".. pointloss)
end
local function streakChain()
	if correct == true then
		streak = streak + 1
	elseif correct == false then
		if streak ~= 0 then
			print("Streak broken!")
		end
		streak = 0
	end
end
local function giveBonusPoint()
	if streak == 5 then
	points = points + 1
	pointbonus = "You now have ".. points .." points(s)!"
	print("".. bonus .." ".. pointbonus)
	elseif streak == 10 then
	points = points + 1
	pointbonus = "You now have ".. points .." points(s)!"
	print("".. bonus .." ".. pointbonus)
	end
end

print("QUIZ #1")
print(qst[1])
local ans = io.read()
if tonumber(ans) == 9 then
	answerCorrect()
else
	answerIncorrect()
end
streakChain()
giveBonusPoint()
print(qst[2])
local ans = io.read()
if tonumber(ans) == 25 then
	answerCorrect()
else
	answerIncorrect()
end
streakChain()
giveBonusPoint()
print(qst[3])
local ans = io.read()
if tonumber(ans) == 32 then
	answerCorrect()
else
	answerIncorrect()
end
streakChain()
giveBonusPoint()
print(qst[4])
local ans = io.read()
if tonumber(ans) == 10 then
	answerCorrect()
else
	answerIncorrect()
end
streakChain()
giveBonusPoint()
print(qst[5])
local ans = io.read()
if tonumber(ans) == 125 then
	answerCorrect()
else
	answerIncorrect()
end
streakChain()
giveBonusPoint()
print(qst[6])
local ans = io.read()
if tonumber(ans) == 52 then
	answerCorrect()
else
	answerIncorrect()
end
streakChain()
giveBonusPoint()
print(qst[7])
local ans = io.read()
if tonumber(ans) == 63 then
	answerCorrect()
else
	answerIncorrect()
end
streakChain()
print(qst[8])
local ans = io.read()
if tonumber(ans) == -288 then
	answerCorrect()
else
	answerIncorrect()
end
streakChain()
giveBonusPoint()
print(qst[9])
local ans = io.read()
if tonumber(ans) == 122 then
	answerCorrect()
else
	answerIncorrect()
end
streakChain()
giveBonusPoint()
print(qst[10])
local ans = io.read()
if tonumber(ans) == 30 then
	answerCorrect()
else
	answerIncorrect()
end
streakChain()
giveBonusPoint()

local grade = "F"
if points == 12 then
	grade = "Grade X: Quintessence"
	print(grade)
elseif points == 11 then
	grade = "Grade S: Perfect"
	print(grade)
elseif points >= 9 then
	grade = "Grade A: Excelent"
	print(grade)
elseif points >= 7 then
	grade = "Grade B: Good"
	print(grade)
elseif points == 6 then
	grade = "Grade C: Average"
	print(grade)
elseif points == 5 then
	grade = "Grade D: Mediocre"
	print(grade)
elseif points >= 3 then
	grade = "Grade E: Bad"
	print(grade)
else
	grade = "Grade F: Horrible"
	print(grade)
end