.class Lcom/android/lgesettings/SettingBootReceiver$3;
.super Ljava/lang/Thread;
.source "SettingBootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/SettingBootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SettingBootReceiver;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SettingBootReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/lgesettings/SettingBootReceiver$3;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/SettingBootReceiver$3;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #getter for: Lcom/android/lgesettings/SettingBootReceiver;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/SettingBootReceiver;->access$400(Lcom/android/lgesettings/SettingBootReceiver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/lgesettings/SettingBootReceiver$3;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #getter for: Lcom/android/lgesettings/SettingBootReceiver;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/SettingBootReceiver;->access$400(Lcom/android/lgesettings/SettingBootReceiver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    :cond_0
    return-void
.end method
