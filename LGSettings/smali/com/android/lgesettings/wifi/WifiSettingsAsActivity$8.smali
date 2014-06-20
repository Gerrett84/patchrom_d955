.class Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$8;
.super Ljava/lang/Object;
.source "WifiSettingsAsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->showExpandableNotificationGuide2(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$8;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 682
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postDelayed, getExpandableNotificationIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$8;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->getExpandableNotificationIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$8;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->getExpandableNotificationIndex()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$8;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 685
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$8;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->setExpandableNotificationYesButton(I)V

    .line 687
    :cond_0
    return-void
.end method
