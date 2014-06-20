.class public Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;
.super Ljava/lang/Object;
.source "CamcorderContinuousFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;->mGet:Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;

    .line 12
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "focusedState"
    .parameter "camera"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback;->mGet:Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/listeners/CamcorderContinuousFocusCallback$CamcorderCAFCallbackFunction;->doCamcorderContinuousFocusCallback(Z)V

    .line 17
    return-void
.end method
