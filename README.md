# AFKFishing
AutoHotKey script for Minecraft AFK autofishing

Dependency
----

* AutoHotKey, tested on version 1.1.29.01
* Minecraft Java Edition. not tested with BE, and it maybe shouldn't work. <s>Who plays it anyway</s>

How to Use
----

* F11 send Minecraft right mouse button down/up(toggle).
    * You can use F3+P in Minecraft to stop pausing from losing focus, so that you can fish while using your computer.
    * Simply Alt+Tab to other window and press F11.

* F12 toggles the function to reconnect when disconnected.
    * does not work if Minecraft window isn't on top of screen. This is for long afk like going asleep or going out.
    * take a screenshot of server selection screen, trim for server button you want to reconnect, rename it "realm.png".
    * when disconnection, it will automatically press back button, double click the given server button, and turn F11 on.

Known Issues
----

* When Minecraft window is losing focus while F11 is toggled on, it stops working. Press F11 twice to recover.
