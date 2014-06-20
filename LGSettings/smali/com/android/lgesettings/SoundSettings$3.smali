.class Lcom/android/lgesettings/SoundSettings$3;
.super Landroid/database/ContentObserver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SoundSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/android/lgesettings/SoundSettings$3;->this$0:Lcom/android/lgesettings/SoundSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1031
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1033
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings$3;->this$0:Lcom/android/lgesettings/SoundSettings;

    #calls: Lcom/android/lgesettings/SoundSettings;->do_updateRingtoneName()V
    invoke-static {v0}, Lcom/android/lgesettings/SoundSettings;->access$500(Lcom/android/lgesettings/SoundSettings;)V

    .line 1034
    return-void
.end method
