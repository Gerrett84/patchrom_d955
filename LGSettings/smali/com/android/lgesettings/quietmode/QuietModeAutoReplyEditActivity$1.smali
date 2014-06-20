.class Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$1;
.super Ljava/lang/Object;
.source "QuietModeAutoReplyEditActivity.java"

# interfaces
.implements Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxLength()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #calls: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->maxlengthToast()V
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$000(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)V

    .line 61
    return-void
.end method
