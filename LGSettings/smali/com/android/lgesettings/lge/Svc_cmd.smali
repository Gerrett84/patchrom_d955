.class public Lcom/android/lgesettings/lge/Svc_cmd;
.super Ljava/lang/Object;
.source "Svc_cmd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LgSvcCmd_getCmdValue(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "LgSvcCmdId"
    .parameter "context"

    .prologue
    .line 10
    const-string v0, "aboutphone , src # Svc_cmd"

    const-string v1, "LgSvcCmd_getCmdValue:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    const-string v0, "NULL"

    return-object v0
.end method

.method public static getQcrilMsgTunnelServiceStatus(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 15
    const/4 v0, 0x1

    .line 16
    .local v0, ret_value:Z
    const-string v1, "aboutphone , src # Svc_cmd"

    const-string v2, "getQcrilMsgTunnelServiceStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return v0
.end method
