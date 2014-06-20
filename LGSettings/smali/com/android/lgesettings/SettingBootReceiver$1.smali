.class Lcom/android/lgesettings/SettingBootReceiver$1;
.super Landroid/os/Handler;
.source "SettingBootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/SettingBootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SettingBootReceiver;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SettingBootReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/lgesettings/SettingBootReceiver$1;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 51
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver$1;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #calls: Lcom/android/lgesettings/SettingBootReceiver;->checkERRC()V
    invoke-static {v1}, Lcom/android/lgesettings/SettingBootReceiver;->access$000(Lcom/android/lgesettings/SettingBootReceiver;)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver$1;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #calls: Lcom/android/lgesettings/SettingBootReceiver;->setStyle()V
    invoke-static {v1}, Lcom/android/lgesettings/SettingBootReceiver;->access$100(Lcom/android/lgesettings/SettingBootReceiver;)V

    .line 57
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver$1;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #calls: Lcom/android/lgesettings/SettingBootReceiver;->changeAccountActivity()V
    invoke-static {v1}, Lcom/android/lgesettings/SettingBootReceiver;->access$200(Lcom/android/lgesettings/SettingBootReceiver;)V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver$1;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #calls: Lcom/android/lgesettings/SettingBootReceiver;->setStyle()V
    invoke-static {v1}, Lcom/android/lgesettings/SettingBootReceiver;->access$100(Lcom/android/lgesettings/SettingBootReceiver;)V

    .line 61
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver$1;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #calls: Lcom/android/lgesettings/SettingBootReceiver;->changeAccountActivity()V
    invoke-static {v1}, Lcom/android/lgesettings/SettingBootReceiver;->access$200(Lcom/android/lgesettings/SettingBootReceiver;)V

    .line 67
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver$1;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #calls: Lcom/android/lgesettings/SettingBootReceiver;->showDataWarningPopupTELCEL()V
    invoke-static {v1}, Lcom/android/lgesettings/SettingBootReceiver;->access$300(Lcom/android/lgesettings/SettingBootReceiver;)V

    goto :goto_0

    .line 71
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, packageName:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_1

    .line 80
    :pswitch_4
    const-string v1, "SettingBootReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uninstall failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :pswitch_5
    const-string v1, "SettingBootReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uninstall succeed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :pswitch_6
    const-string v1, "SettingBootReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uninstall failed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is a device admin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 72
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
