.class Lcom/android/lgesettings/TetherSettings$11;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TetherSettings;
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
    .line 2273
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$11;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2275
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2276
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2277
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$11;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->updateTetherEnable()V
    invoke-static {v1}, Lcom/android/lgesettings/TetherSettings;->access$2500(Lcom/android/lgesettings/TetherSettings;)V

    .line 2279
    :cond_0
    return-void
.end method
