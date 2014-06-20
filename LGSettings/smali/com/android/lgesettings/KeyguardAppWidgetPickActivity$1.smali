.class Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$1;
.super Ljava/lang/Object;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$1;->this$0:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$1;->this$0:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->finish()V

    .line 747
    return-void
.end method
