.class Lcom/android/lgesettings/DataRoamingOptionDialogResult$ListenForCancel;
.super Landroid/content/BroadcastReceiver;
.source "DataRoamingOptionDialogResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataRoamingOptionDialogResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenForCancel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataRoamingOptionDialogResult;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/DataRoamingOptionDialogResult;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult$ListenForCancel;->this$0:Lcom/android/lgesettings/DataRoamingOptionDialogResult;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/DataRoamingOptionDialogResult;Lcom/android/lgesettings/DataRoamingOptionDialogResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/lgesettings/DataRoamingOptionDialogResult$ListenForCancel;-><init>(Lcom/android/lgesettings/DataRoamingOptionDialogResult;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult$ListenForCancel;->this$0:Lcom/android/lgesettings/DataRoamingOptionDialogResult;

    #calls: Lcom/android/lgesettings/DataRoamingOptionDialogResult;->quitActivity()V
    invoke-static {v0}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->access$100(Lcom/android/lgesettings/DataRoamingOptionDialogResult;)V

    .line 176
    return-void
.end method
