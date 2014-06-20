.class Lcom/lge/gesture/LGTiltImpl;
.super Lcom/lge/gesture/LGTilt;
.source "LGTiltImpl.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lge/gesture/LGTilt;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/lge/gesture/LGTiltImpl;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public PlayWithInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 18
    const-string v0, "Tilt"

    const-string v1, "LGTilt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method
