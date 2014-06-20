.class public Lcom/android/lgesettings/accessibility/assistivetouch/AssistiveTouchServiceEnableBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AssistiveTouchServiceEnableBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 11
    const-string v0, "resumet"

    const-string v1, "Settings Package : AssistiveTouchServiceEnableBroadcastReceiver!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void
.end method
