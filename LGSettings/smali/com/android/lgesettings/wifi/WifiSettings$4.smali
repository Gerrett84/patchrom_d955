.class Lcom/android/lgesettings/wifi/WifiSettings$4;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 738
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettings$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #calls: Lcom/android/lgesettings/wifi/WifiSettings;->isPhone()Z
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->access$400(Lcom/android/lgesettings/wifi/WifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->hasSimProblem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    const/4 v1, 0x4

    #calls: Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$500(Lcom/android/lgesettings/wifi/WifiSettings;I)V

    .line 746
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    const/4 v1, 0x5

    #calls: Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$600(Lcom/android/lgesettings/wifi/WifiSettings;I)V

    goto :goto_0
.end method
