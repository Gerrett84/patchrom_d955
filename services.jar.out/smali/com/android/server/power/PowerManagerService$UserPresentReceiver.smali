.class final Lcom/android/server/power/PowerManagerService$UserPresentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserPresentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2965
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$UserPresentReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2965
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$UserPresentReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$UserPresentReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    #calls: Lcom/android/server/power/PowerManagerService;->setKeyLed(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;Z)V

    .line 2972
    return-void
.end method
