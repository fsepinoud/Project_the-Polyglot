from chatterbot import ChatBot
from chatterbot.trainers import ChatterBotCorpusTrainer, ListTrainer


def trainBot(chatbot):
    conversation = [
        "What is your name",
        "My name is Kate",
        "Are you human",
        "No am robo",
        "Okay",
        "Sawasawa",
        "Kabisa",
        "Kesho"
    ]

    trainer = ListTrainer(chatbot)
    trainer.train(conversation)

    trainer = ChatterBotCorpusTrainer(chatbot)
    trainer.train("chatterbot.corpus.english")
    return chatbot
