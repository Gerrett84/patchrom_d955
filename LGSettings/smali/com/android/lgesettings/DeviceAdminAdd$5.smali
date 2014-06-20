.class Lcom/android/lgesettings/DeviceAdminAdd$5;
.super Landroid/os/Handler;
.source "DeviceAdminAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DeviceAdminAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DeviceAdminAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/lgesettings/DeviceAdminAdd$5;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 470
    const-string v0, "parws"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage! : mFlagBtnClick =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/DeviceAdminAdd;->mFlagBtnClick:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/android/lgesettings/DeviceAdminAdd$5;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/lgesettings/DeviceAdminAdd;->finish()V

    .line 472
    return-void
.end method
