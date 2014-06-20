.class public Lcom/android/lgesettings/accessibility/assistivetouchboard/AssistiveTouchBoardService;
.super Landroid/app/Service;
.source "AssistiveTouchBoardService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 11
    const-string v0, "resumet"

    const-string v1, "Settings Package : AssistiveTouchBoardService!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method
