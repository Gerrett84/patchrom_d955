.class Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;
.super Landroid/os/Handler;
.source "LGCliptrayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/LGCliptrayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGCliptrayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/LGCliptrayManager;


# direct methods
.method private constructor <init>(Landroid/webkit/LGCliptrayManager;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;->this$0:Landroid/webkit/LGCliptrayManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/LGCliptrayManager;Landroid/webkit/LGCliptrayManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;-><init>(Landroid/webkit/LGCliptrayManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 125
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipData;

    .line 128
    .local v0, clipData:Landroid/content/ClipData;
    if-nez v0, :cond_1

    .line 129
    const-string v5, "LGCliptrayManager"

    const-string v6, "LGCliptrayHandler::LGCLIPTRAY_ONPASTE: clipData is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 134
    const/4 v4, 0x0

    .line 135
    .local v4, pasteText:Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 136
    .local v1, clipItem:Landroid/content/ClipData$Item;
    if-nez v1, :cond_3

    .line 137
    const-string v5, "LGCliptrayManager"

    const-string v6, "LGCliptrayHandler::LGCLIPTRAY_ONPASTE: clipItem is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 141
    .local v2, clipUri:Landroid/net/Uri;
    if-eqz v2, :cond_4

    const-string v5, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 145
    :cond_4
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 146
    if-nez v4, :cond_5

    if-eqz v2, :cond_5

    .line 147
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    :cond_5
    iget-object v5, p0, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;
    invoke-static {v5}, Landroid/webkit/LGCliptrayManager;->access$200(Landroid/webkit/LGCliptrayManager;)Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 151
    iget-object v5, p0, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;
    invoke-static {v5}, Landroid/webkit/LGCliptrayManager;->access$200(Landroid/webkit/LGCliptrayManager;)Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 158
    .end local v0           #clipData:Landroid/content/ClipData;
    .end local v1           #clipItem:Landroid/content/ClipData$Item;
    .end local v2           #clipUri:Landroid/net/Uri;
    .end local v3           #i:I
    .end local v4           #pasteText:Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v5, p0, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    invoke-static {v5}, Landroid/webkit/LGCliptrayManager;->access$300(Landroid/webkit/LGCliptrayManager;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    invoke-static {v5}, Landroid/webkit/LGCliptrayManager;->access$300(Landroid/webkit/LGCliptrayManager;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    move-result-object v5

    invoke-interface {v5}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->isServiceConnected()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 159
    iget-object v5, p0, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    invoke-static {v5}, Landroid/webkit/LGCliptrayManager;->access$300(Landroid/webkit/LGCliptrayManager;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v6, v5}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->copyToCliptray(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    :cond_6
    const-string v5, "LGCliptrayManager"

    const-string v6, "LGCliptrayHandler::LGCLIPTRAY_COPY_TEXT: mCliptrayManager is null or not connected"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 166
    :pswitch_2
    iget-object v5, p0, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    invoke-static {v5}, Landroid/webkit/LGCliptrayManager;->access$300(Landroid/webkit/LGCliptrayManager;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    invoke-static {v5}, Landroid/webkit/LGCliptrayManager;->access$300(Landroid/webkit/LGCliptrayManager;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    move-result-object v5

    invoke-interface {v5}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->isServiceConnected()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 167
    iget-object v5, p0, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    invoke-static {v5}, Landroid/webkit/LGCliptrayManager;->access$300(Landroid/webkit/LGCliptrayManager;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    invoke-interface {v6, v5}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->copyImageToCliptray(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 169
    :cond_7
    const-string v5, "LGCliptrayManager"

    const-string v6, "LGCliptrayHandler::LGCLIPTRAY_COPY_IMAGE: mCliptrayManager is null or not connected"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    :pswitch_3
    iget-object v5, p0, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    invoke-static {v5}, Landroid/webkit/LGCliptrayManager;->access$300(Landroid/webkit/LGCliptrayManager;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    invoke-static {v5}, Landroid/webkit/LGCliptrayManager;->access$300(Landroid/webkit/LGCliptrayManager;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    move-result-object v5

    invoke-interface {v5}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->isServiceConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_8

    .line 175
    iget-object v5, p0, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    invoke-static {v5}, Landroid/webkit/LGCliptrayManager;->access$300(Landroid/webkit/LGCliptrayManager;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/ClipData;

    invoke-interface {v6, v5}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->copyToCliptray(Landroid/content/ClipData;)V

    goto/16 :goto_0

    .line 177
    :cond_8
    const-string v5, "LGCliptrayManager"

    const-string v6, "LGCliptrayHandler::LGCLIPTRAY_COPY_DATA: mCliptrayManager is null or not connected"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
