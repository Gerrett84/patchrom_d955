.class Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)V
    .locals 0
    .parameter

    .prologue
    .line 3076
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3079
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    #calls: Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->performServiceLayerEntitlementCheck()I
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->access$7300(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)I

    move-result v0

    .line 3081
    .local v0, result:I
    if-nez v0, :cond_0

    .line 3082
    const-string v1, "Tethering"

    const-string v2, "[EntitlementCheck] Case 1, ENTITLEMENT_CHECK_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    .line 3093
    :goto_0
    return-void

    .line 3084
    :cond_0
    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 3085
    const-string v1, "Tethering"

    const-string v2, "[EntitlementCheck] Case 2, TETHER_AUTHENTICATION_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->disableTethering()V

    .line 3087
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    goto :goto_0

    .line 3089
    :cond_1
    const-string v1, "Tethering"

    const-string v2, "[EntitlementCheck] Case 3, TETHER_AUTHENTICATION_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->disableTethering()V

    .line 3091
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    goto :goto_0
.end method
