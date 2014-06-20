.class final Lcom/android/lgesettings/quietmode/QuietModeSettingsService$ServiceHandler;
.super Landroid/os/Handler;
.source "QuietModeSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$ServiceHandler;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    .line 541
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 542
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettingsService$ServiceHandler;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettingsService;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->processMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/lgesettings/quietmode/QuietModeSettingsService;->access$000(Lcom/android/lgesettings/quietmode/QuietModeSettingsService;Landroid/os/Message;)V

    .line 547
    return-void
.end method
