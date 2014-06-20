.class Lcom/android/lgesettings/wifi/WifiDialog$3;
.super Ljava/util/TimerTask;
.source "WifiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiDialog$3;->this$0:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog$3;->this$0:Lcom/android/lgesettings/wifi/WifiDialog;

    #getter for: Lcom/android/lgesettings/wifi/WifiDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->access$200(Lcom/android/lgesettings/wifi/WifiDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/wifi/WifiDialog$3$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiDialog$3$1;-><init>(Lcom/android/lgesettings/wifi/WifiDialog$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    return-void
.end method
