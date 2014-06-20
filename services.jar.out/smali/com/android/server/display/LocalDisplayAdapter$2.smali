.class Lcom/android/server/display/LocalDisplayAdapter$2;
.super Landroid/content/BroadcastReceiver;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$2;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    const-string v4, "wfd_state"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 144
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$2;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const-string v4, "hdcp_enabled"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/server/display/LocalDisplayAdapter;->wfdSecureConnect:Z
    invoke-static {v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->access$102(Lcom/android/server/display/LocalDisplayAdapter;Z)Z

    .line 145
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$2;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #getter for: Lcom/android/server/display/LocalDisplayAdapter;->wfdSecureConnect:Z
    invoke-static {v3}, Lcom/android/server/display/LocalDisplayAdapter;->access$100(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    invoke-static {v6}, Landroid/view/Surface;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    .line 147
    .local v1, displayToken:Landroid/os/IBinder;
    new-instance v2, Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-direct {v2}, Landroid/view/Surface$PhysicalDisplayInfo;-><init>()V

    .line 148
    .local v2, wfdPhys:Landroid/view/Surface$PhysicalDisplayInfo;
    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Landroid/view/Surface;->getDisplayInfo(Landroid/os/IBinder;Landroid/view/Surface$PhysicalDisplayInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$2;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #getter for: Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/display/LocalDisplayAdapter;->access$200(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 150
    .local v0, device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-eqz v0, :cond_0

    .line 151
    iput-boolean v5, v2, Landroid/view/Surface$PhysicalDisplayInfo;->secure:Z

    .line 152
    invoke-virtual {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked(Landroid/view/Surface$PhysicalDisplayInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$2;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 159
    .end local v0           #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v1           #displayToken:Landroid/os/IBinder;
    .end local v2           #wfdPhys:Landroid/view/Surface$PhysicalDisplayInfo;
    :cond_0
    return-void
.end method
