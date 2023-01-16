### Notification System

This is only a readme.md, not the source.

### Functions

> **Note**
> We will be using "module" for the loadstring.

------------------------------------------------------------------------------------------------------------------------------------------------

```
module:notif(text: string,n: Number) 
```

This function makes a notification(white box w/ your message) which will disappear after the desired time(n argument)
Example: 
```
module:notif("Heyo!",5)
```
------------------------------------------------------------------------------------------------------------------------------

```
module:postMsg(col: Color3,font: Enum,size: Number,text: Value)
```

This function sends a message(through chat,not serverside) to your chat with the desired color,font,size and text.

Example:

```
module:postMsg(Color3.new(1,1,0),Enum.Font.SourceSansItalic,16,"Heyo!")
```
