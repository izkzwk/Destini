//
//  StoryBrain.swift
//  Destini
//
//  Created by Dzmitry Bladyka on 01.02.23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "У вашей машины пробило колесо на извилистой дороге в глуши, где нет приема сотовой связи. Вы решаете ехать автостопом. Ржавый пикап с грохотом останавливается рядом с вами. Мужчина в широкополой шляпе с бездушными глазами открывает перед вами пассажирскую дверь и спрашивает: 'Подвезти, парень?'",
            choice1: "Я буду прыгать. Спасибо за помощь!", choice1Destination: 2,
            choice2: "Лучше сначала спросите его, не убийца ли он", choice2Destination: 1
        ),
        
        Story(
            title: "Он медленно кивает, не обращая внимания на вопрос",
            choice1: "По крайней мере, он честен. Я залезу", choice1Destination: 2,
            choice2: "Подожди, я знаю, как менять шины", choice2Destination: 3
        ),
        
        Story(
            title: "Когда вы начинаете ехать, незнакомец начинает рассказывать о своих отношениях с матерью. С каждой минутой он становится все злее и злее. Он просит вас открыть бардачок. Внутри вы находите окровавленный нож, два отрезанных пальца и кассету с записью Элтона Джона. Он тянется к бардачку",
            choice1: "Я люблю Элтона Джона! Передай ему кассету", choice1Destination: 5,
            choice2: "Или он, или я! Возьми нож и зарежь его", choice2Destination: 4
        ),
        
        Story(
            title: "Что? Это просто отговорка! Знаете ли вы, что дорожно-транспортные происшествия являются второй основной причиной смерти от несчастных случаев для большинства взрослых возрастных групп?",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        
        Story(
            title: "Когда вы пробиваете ограждение и падаете на зубчатые скалы внизу, вы размышляете о сомнительной мудрости нанесения ножевого ранения кому-либо, когда он управляет автомобилем, в котором находитесь вы",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        
        Story(
            title: "Вы сблизились с убийцей, распевая куплеты 'Can you feel the love tonight'. Он высаживает вас в следующем городе. Перед отъездом он спрашивает вас, не знаете ли вы хороших мест, куда можно сбрасывать трупы. Вы отвечаете: 'Попробуйте на пирсе'",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}
