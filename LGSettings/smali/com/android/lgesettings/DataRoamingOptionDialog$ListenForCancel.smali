.class Lcom/android/lgesettings/DataRoamingOptionDialog$ListenForCancel;
.super Landroid/content/BroadcastReceiver;
.source "DataRoamingOptionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataRoamingOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenForCancel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataRoamingOptionDialog;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/DataRoamingOptionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog$ListenForCancel;->this$0:Lcom/android/lgesettings/DataRoamingOptionDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/DataRoamingOptionDialog;Lcom/android/lgesettings/DataRoamingOptionDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/lgesettings/DataRoamingOptionDialog$ListenForCancel;-><init>(Lcom/android/lgesettings/DataRoamingOptionDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialog$ListenForCancel;->this$0:Lcom/android/lgesettings/DataRoamingOptionDialog;

    #calls: Lcom/android/lgesettings/DataRoamingOptionDialog;->quitActivity()V
    invoke-static {v0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->access$200(Lcom/android/lgesettings/DataRoamingOptionDialog;)V

    .line 237
    return-void
.end method
