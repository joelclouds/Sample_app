#__version__ = '0.0.1'

from kivymd.app import MDApp
from kivymd.uix.label import MDLabel

class MainApp(MDApp):
    def build(self):
        return MDLabel(text="Hello, World", halign="center")

MainApp().run()
#
#from kivymd.app import MDApp
#from kivymd.uix.screen import MDScreen
#from kivymd.uix.button import MDRectangleFlatButton
#
#
#class MainApp(MDApp):
#    def build(self):
#        self.theme_cls.theme_style = "Dark"
#        self.theme_cls.primary_palette = "Orange"
#
#        return (
#            MDScreen(
#                MDRectangleFlatButton(
#                    text="Hello, World",
#                    pos_hint={"center_x": 0.5, "center_y": 0.5},
#                )
#            )
#        )
#
#
#MainApp().run()
