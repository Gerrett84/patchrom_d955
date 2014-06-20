.class Lcom/android/lgesettings/TetherSettings$12;
.super Ljava/util/TimerTask;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherSettings;->setUpsellTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2334
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/TetherSettings;->access$2900(Lcom/android/lgesettings/TetherSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/TetherSettings$12$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherSettings$12$1;-><init>(Lcom/android/lgesettings/TetherSettings$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2368
    return-void
.end method
