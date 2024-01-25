function RR_Dad_Jokes(i_max)
% Modifies a random sequence of integers generated by Matlab's randi command to
% eliminate integers that appear as the n+1=8 most recent integers in the sequence.
% Each integer could correspond to a "joke" in a "dictionary".
% TODO: replace the "jokes" below with jokes that are actually funny.
%       (left as an exercise by the discerning reader...)
%% Renaissance Robotics codebase, Chapter 2, https://github.com/tbewley/RR
%% Copyright 2024 by Thomas Bewley, distributed under BSD 3-Clause License.

told=[]; rng('shuffle'), j=randi([0,15]); n=7; for i=1:i_max 
  while ~isempty(find(told(max(end-n,1):end)==j)), j=randi([0,15]); end
  told=[told,j];
end
% told     % (uncomment this line to see the resulting sequence)

dictionary=[...
"Why doesn’t anybody talk to circles? Because there's no point.";...
"Do you know what seems odd to me?  Numbers that can’t be evenly divided by two.";...
"What do you call a fish wearing a bowtie? Sofishticated";...
"What do you call a factory that makes products that are just OK? A satisfactory.";...
"Why do seagulls fly over the ocean? Because if they flew over the bay, they'd be called bagels";...
"I only know 25 letters of the alphabet. I don't know y.";...
"What is the only alphabet in the world with 52 letters? Canadian. A, eh? B, eh? C, eh? ...";...
"What's the best thing about Switzerland? I don't know, but the flag is a big plus.";...
"I’ll do algebra, I’ll do trig, I’ll even do statistics.!";...
"What did the zero say to the eight?  Nice belt.";...
"What did one hat say to the other? Stay here! I'm going on ahead.";...
"There are 3 kinds of people in the world: those who can count, and those who can't.";...
"There are 2 types of people in the world: those who divide the world into 2 types of people, and those like me.";...
"A farmer counted 396 cows in his field.  But when he rounded them up he had 400.";...
"I ordered a chicken and an egg from Amazon. I'll let you know...";...
"Do you wanna box for your leftovers? No, but I'll wrestle you for them."];

for i=1:i_max; disp(dictionary(told(i)+1)), if i<i_max, pause, end, end
end
