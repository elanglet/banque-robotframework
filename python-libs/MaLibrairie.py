from robot.api.deco import keyword

class MaLibrairie:
    """
    Librairie personnalisée pour Robot Framework.
    Il faut faire attention aux conventions et règles de nommage.
    """

    @keyword('Dire Bonjour')            # Permet de nommer le mot clé.
    def direBonjour(self, nom=None):
        """
        Ce mot clé génère un message personnalisé.

        :param nom:     Le nom pour personnaliser le message.
        :return:        Le message

        Exemple :

        | Dire Bonjour | Robert | Renvoi 'Bonjour Robert !' |
        | Dire Bonjour |        | Renvoi 'Bonjour à toi !'  |
        """

        if nom is not None:
            return "Bonjour " + nom + "!"
        else:
            return "Bonjour à toi !"
