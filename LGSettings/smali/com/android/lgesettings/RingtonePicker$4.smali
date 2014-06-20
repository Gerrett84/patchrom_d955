.class Lcom/android/lgesettings/RingtonePicker$4;
.super Landroid/os/storage/StorageEventListener;
.source "RingtonePicker.java"


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
    .line 1170
    iput-object p1, p0, Lcom/android/lgesettings/RingtonePicker$4;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker$4;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-virtual {v0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1174
    return-void
.end method
