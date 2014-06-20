.class Lcom/android/lgesettings/lockscreen/FccNotificationActivity$4;
.super Ljava/lang/Object;
.source "FccNotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lockscreen/FccNotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/FccNotificationActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/FccNotificationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/FccNotificationActivity$4;->this$0:Lcom/android/lgesettings/lockscreen/FccNotificationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/FccNotificationActivity$4;->this$0:Lcom/android/lgesettings/lockscreen/FccNotificationActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/FccNotificationActivity;->finish()V

    .line 58
    return-void
.end method
