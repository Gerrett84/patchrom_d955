.class Lcom/android/lgesettings/wifi/WifiSettings$7;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 818
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettings$7;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 836
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$7;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 837
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 838
    const v1, 0x7f0802e5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 842
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 820
    const-string v3, "WifiSettings"

    const-string v4, "forget onSuccess"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 822
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings$7;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 823
    .local v0, at:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 825
    .local v1, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings$7;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiSettings;->access$700(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/AccessPoint;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 826
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings$7;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiSettings;->access$700(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/AccessPoint;

    move-result-object v3

    iget-object v2, v3, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 827
    .local v2, ssid:Ljava/lang/String;
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forget succedd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const v3, 0x7f08139a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 834
    .end local v0           #at:Landroid/app/Activity;
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v2           #ssid:Ljava/lang/String;
    :cond_0
    return-void
.end method
