.class Lcom/android/lgesettings/QuietTimeInfo$1;
.super Ljava/lang/Object;
.source "QuietTimeInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/QuietTimeInfo;->setSoundProfile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/QuietTimeInfo;

.field final synthetic val$ringerMode:I


# direct methods
.method constructor <init>(Lcom/android/lgesettings/QuietTimeInfo;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/lgesettings/QuietTimeInfo$1;->this$0:Lcom/android/lgesettings/QuietTimeInfo;

    iput p2, p0, Lcom/android/lgesettings/QuietTimeInfo$1;->val$ringerMode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 796
    const-string v0, "QuietTimeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSoundProfile() ringerMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/QuietTimeInfo$1;->val$ringerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 798
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeInfo$1;->this$0:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/lgesettings/QuietTimeInfo$1;->val$ringerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 799
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 800
    return-void
.end method
