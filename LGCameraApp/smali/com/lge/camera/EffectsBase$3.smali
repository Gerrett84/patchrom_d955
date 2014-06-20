.class Lcom/lge/camera/EffectsBase$3;
.super Ljava/lang/Object;
.source "EffectsBase.java"

# interfaces
.implements Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/EffectsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/EffectsBase;


# direct methods
.method constructor <init>(Lcom/lge/camera/EffectsBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/lge/camera/EffectsBase$3;->this$0:Lcom/lge/camera/EffectsBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingDone()V
    .locals 3

    .prologue
    .line 1058
    const-string v0, "CameraApp"

    const-string v1, "Recording done callback triggered"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/lge/camera/EffectsBase$3;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 1060
    return-void
.end method
