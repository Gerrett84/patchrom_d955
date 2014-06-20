.class Lcom/android/lgesettings/SettingBootReceiver$2;
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
    .line 120
    iput-object p1, p0, Lcom/android/lgesettings/SettingBootReceiver$2;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 124
    iget-object v3, p0, Lcom/android/lgesettings/SettingBootReceiver$2;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #getter for: Lcom/android/lgesettings/SettingBootReceiver;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/lgesettings/SettingBootReceiver;->access$400(Lcom/android/lgesettings/SettingBootReceiver;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/android/lgesettings/SettingBootReceiver$2;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #getter for: Lcom/android/lgesettings/SettingBootReceiver;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/lgesettings/SettingBootReceiver;->access$400(Lcom/android/lgesettings/SettingBootReceiver;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/SettingBootReceiver;->access$500()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/SettingBootReceiver$2;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #getter for: Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/lgesettings/SettingBootReceiver;->access$600(Lcom/android/lgesettings/SettingBootReceiver;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/android/lgesettings/SettingBootReceiver;->access$500()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 130
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/lgesettings/SettingBootReceiver$2;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #getter for: Lcom/android/lgesettings/SettingBootReceiver;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/lgesettings/SettingBootReceiver;->access$400(Lcom/android/lgesettings/SettingBootReceiver;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    const-wide/16 v5, 0x4e20

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1           #i:I
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    return-void

    .line 132
    .restart local v1       #i:I
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SettingBootReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/lgesettings/SettingBootReceiver;->access$500()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed.(Successfully Removed)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
