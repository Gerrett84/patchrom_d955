.class Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$5;
.super Ljava/lang/Object;
.source "WifiSettingsAsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->showExpandableNotificationGuide(Landroid/view/View;I)V
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
    .line 506
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x33

    const/4 v3, 0x0

    .line 508
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->targetDevice:Ljava/lang/String;

    const-string v1, "awifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->targetDevice:Ljava/lang/String;

    const-string v1, "awifi070u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->access$100(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mPopupView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->access$100(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
