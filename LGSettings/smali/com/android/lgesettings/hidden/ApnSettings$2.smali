.class Lcom/android/lgesettings/hidden/ApnSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/hidden/ApnSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/hidden/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/hidden/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/lgesettings/hidden/ApnSettings$2;->this$0:Lcom/android/lgesettings/hidden/ApnSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 196
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    if-eqz p1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnSettings$2;->this$0:Lcom/android/lgesettings/hidden/ApnSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/lgesettings/hidden/ApnSettings;->csActive:Z

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnSettings$2;->this$0:Lcom/android/lgesettings/hidden/ApnSettings;

    #calls: Lcom/android/lgesettings/hidden/ApnSettings;->fillList()V
    invoke-static {v0}, Lcom/android/lgesettings/hidden/ApnSettings;->access$200(Lcom/android/lgesettings/hidden/ApnSettings;)V

    .line 204
    :cond_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/hidden/ApnSettings$2;->this$0:Lcom/android/lgesettings/hidden/ApnSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/lgesettings/hidden/ApnSettings;->csActive:Z

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 208
    return-void
.end method
