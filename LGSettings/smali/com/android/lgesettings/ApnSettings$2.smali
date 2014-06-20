.class Lcom/android/lgesettings/ApnSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/ApnSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/lgesettings/ApnSettings$2;->this$0:Lcom/android/lgesettings/ApnSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 283
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    if-eqz p1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings$2;->this$0:Lcom/android/lgesettings/ApnSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/lgesettings/ApnSettings;->csActive:Z

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings$2;->this$0:Lcom/android/lgesettings/ApnSettings;

    #calls: Lcom/android/lgesettings/ApnSettings;->fillList()V
    invoke-static {v0}, Lcom/android/lgesettings/ApnSettings;->access$200(Lcom/android/lgesettings/ApnSettings;)V

    .line 291
    :cond_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings$2;->this$0:Lcom/android/lgesettings/ApnSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/lgesettings/ApnSettings;->csActive:Z

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 295
    return-void
.end method
