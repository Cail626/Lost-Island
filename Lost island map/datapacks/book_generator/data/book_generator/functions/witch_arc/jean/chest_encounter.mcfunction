setblock ~1 ~ ~ crimson_wall_sign[facing=east] replace
setblock ~ ~ ~ chest[facing=east]{Items:[{Slot:13,Count:1,id:"minecraft:written_book",tag:{title:"Encounter",author:"Discussion",pages:['{"text":"(???) Hey! You there!\\n\\n(You) Who is that?\\n\\n(???) Look at me when I speak. I am the little head on the ground.\\n\\n(Mysterious Head) Yes, I know. It\'s not every day that you see a head on the ground. But listen, I know why you are here."}','{"text":"(Mysterious Head) You want to find the treasure at the bottom of the lake, and I can help you get it. Even if you manage to reach the bottom alive, you will need a special item to continue further, and I know how to get it. So, take me with you, and I will be your guide."}','{"text":"(You) Huh. What is this? Am I dreaming?\\n\\n(Mysterious Head) Not at all! I am as alive as you... but without a body.\\n\\n(You) This isn\'t possible. How are you alive?\\n"}','{"text":"(Mysterious Head) It\'s a little complicated... Let\'s just say that this island isn\'t like the rest of the world...\\n\\n(You) (What is happening here!? It seems strange, but I must find this treasure! Nothing will stop me! My goal is to obtain the treasure, and I know)"}','{"text":"(You) (not much about this place... This head seems shady, but it can provide valuable information about this place. I must take this risk.)\\n\\n(Mysterious Head) Hey! Lost in your thoughts? I understand your concern, but trust me, I am here to help you! :)"}','{"text":"(You) So, what should I do?\\n\\n(Mysterious Head) I\'m glad you\'re willing to listen to my advice. On the other side of the island, there is a village. Go there, and next to it, you will find a big entrance to the inside of the mountain. Inside, you should find a"}','{"text":"(Mysterious Head) lever that can open a passage to the bottom of the lake.\\n(You) And I can\'t breathe underwater. Do you know a solution?\\n\\n(Mysterious Head) I knew it! From the look on your face, I could tell you\'re"}','{"text":"(Mysterious Head) an unprepared traveler. But worry not, my friend!\\n\\n(You) I am not your friend. And don\'t talk to me like that!\\n*Kick the head lightly*\\nIn fact, I don\'t really trust you, but I don\'t have much choice."}','{"text":"(Mysterious Head)\\n*Ouch*\\nYou\'re not very friendly, are you? You know, I\'m not obligated to help you. I could just stand here and enjoy the breeze on my face.\\n\\n(You) Ok, ok, I\'m sorry. I want your help, please.\\n"}','{"text":"(Mysterious Head) That\'s better! To your left, there is a witch\'s house. The old lady residing there is not very friendly and has some mysterious powers, so prepare yourself for fights. There are potions inside her house, and surely, there is an underwater \\nbreathing potion."}','{"text":"(You) Ok, thanks. I\'ll head over there. (I should be careful of him, but I think I should go where he mentioned. Let\'s go first to the witch\'s base. I hope everything goes well).\\n\\n(Mysterious Head) Hey! Please don\'t leave me alone! Take me with you!"}','{"text":"(You) Take you with me? Why would I bring along a shady head? Weren\'t you just enjoying the breeze?\\n\\n(Mysterious Head) No, please don\'t leave me!!! Do you know how long I\'ve been here? Even I don\'t know! So please be kind and take me with you."}','{"text":"(Mysterious Head) \\nI promise I\'m a good advisor, and I will help you get to the treasure. I haven\'t seen the treasure, but I was very close to it before... some errors were made..."}','{"text":"(You) And what do you gain by helping me?\\n\\n(Mysterious Head) I don\'t really have much to do, so I think helping you is a good way to kill time. It\'s pretty uncommon to see newcomers here.\\n\\n(You) Ok, I understand. I felt pretty lonely during my"}','{"text":"(You) travels.\\n\\n(Mysterious Head) Ah, already opening up! I think we\'ll make a great team! Let\'s go!\\n\\n(You) Could you just be quiet for a moment? You\'re so noisy."}','[{"text":"-------------------\\nYou can pick up the mysterious head by "},{"text":"clicking here","bold":true,"clickEvent":{"action":"run_command","value":"/function main_fct:witcharc/before_entering/jean/picks_up_jean"}},{"text":".\\n\\nIt is advised to start with the witch\'s base by going to the left.","color":"reset"}]']}}]}
execute positioned ~ ~ ~ run kill @e[type=item,nbt={Item:{id:"minecraft:crimson_sign",Count:1b}},sort=nearest]
