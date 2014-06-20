.class Lcom/android/lgesettings/RingtonePicker$1;
.super Ljava/lang/Object;
.source "RingtonePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/RingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RingtonePicker;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/RingtonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/lgesettings/RingtonePicker$1;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker$1;->this$0:Lcom/android/lgesettings/RingtonePicker;

    #calls: Lcom/android/lgesettings/RingtonePicker;->stopAnyPlayingRingtone()V
    invoke-static {v0}, Lcom/android/lgesettings/RingtonePicker;->access$000(Lcom/android/lgesettings/RingtonePicker;)V

    .line 184
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker$1;->this$0:Lcom/android/lgesettings/RingtonePicker;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/RingtonePicker;->mDrmJob:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/RingtonePicker;->access$102(Lcom/android/lgesettings/RingtonePicker;Z)Z

    .line 185
    return-void
.end method
