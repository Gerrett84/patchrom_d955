.class Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/lgesettings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/ApnSettings;Lcom/android/lgesettings/ApnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1140
    invoke-direct {p0, p1}, Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/lgesettings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 1143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1158
    :goto_0
    return-void

    .line 1145
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/lgesettings/ApnSettings;

    #calls: Lcom/android/lgesettings/ApnSettings;->fillList()V
    invoke-static {v0}, Lcom/android/lgesettings/ApnSettings;->access$200(Lcom/android/lgesettings/ApnSettings;)V

    .line 1146
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/lgesettings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1147
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/lgesettings/ApnSettings;->access$102(Z)Z

    .line 1148
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/lgesettings/ApnSettings;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnSettings;->dismissDialog(I)V

    .line 1149
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/lgesettings/ApnSettings;

    iget-object v1, p0, Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/lgesettings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1143
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
