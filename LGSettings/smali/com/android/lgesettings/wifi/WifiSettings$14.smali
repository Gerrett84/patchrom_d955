.class Lcom/android/lgesettings/wifi/WifiSettings$14;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1898
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettings$14;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1901
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 1902
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$14;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1000(Lcom/android/lgesettings/wifi/WifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1903
    check-cast v0, Lcom/android/lgesettings/wifi/WifiDialog;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1904
    check-cast v0, Lcom/android/lgesettings/wifi/WifiDialog;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1906
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1907
    const-string v0, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 1659, : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onKey():keyCode == KeyEvent.KEYCODE_BACK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    const-string v0, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onKey():keyCode == KeyEvent.KEYCODE_BACK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$14;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationYesButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1910
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$14;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 1911
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$14;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings$14;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide2(I)V

    :cond_1
    :goto_0
    move v0, v1

    .line 1923
    :goto_1
    return v0

    .line 1913
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$14;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1914
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$14;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings$14;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide(I)V

    goto :goto_0

    .line 1917
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$14;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings$14;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide(I)V

    goto :goto_0

    .line 1923
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
