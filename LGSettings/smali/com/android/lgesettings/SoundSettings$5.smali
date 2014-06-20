.class Lcom/android/lgesettings/SoundSettings$5;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/SoundSettings;->do_InitRunnableMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1760
    iput-object p1, p0, Lcom/android/lgesettings/SoundSettings$5;->this$0:Lcom/android/lgesettings/SoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings$5;->this$0:Lcom/android/lgesettings/SoundSettings;

    #calls: Lcom/android/lgesettings/SoundSettings;->do_updateRingtoneName()V
    invoke-static {v0}, Lcom/android/lgesettings/SoundSettings;->access$500(Lcom/android/lgesettings/SoundSettings;)V

    .line 1763
    return-void
.end method
