.class Lcom/android/lgesettings/lge/ScreenOffEttectAni$1;
.super Ljava/lang/Object;
.source "ScreenOffEttectAni.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/ScreenOffEttectAni;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/ScreenOffEttectAni;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/ScreenOffEttectAni;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni$1;->this$0:Lcom/android/lgesettings/lge/ScreenOffEttectAni;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni$1;->this$0:Lcom/android/lgesettings/lge/ScreenOffEttectAni;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->finish()V

    .line 84
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni$1;->this$0:Lcom/android/lgesettings/lge/ScreenOffEttectAni;

    invoke-virtual {v0, v1, v1}, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->overridePendingTransition(II)V

    .line 85
    return-void
.end method
