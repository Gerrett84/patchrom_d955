.class Lcom/android/lgesettings/lockscreen/FccNotificationActivity$2;
.super Ljava/lang/Object;
.source "FccNotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 39
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/FccNotificationActivity$2;->this$0:Lcom/android/lgesettings/lockscreen/FccNotificationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/FccNotificationActivity$2;->this$0:Lcom/android/lgesettings/lockscreen/FccNotificationActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/FccNotificationActivity;->finish()V

    .line 44
    return-void
.end method
