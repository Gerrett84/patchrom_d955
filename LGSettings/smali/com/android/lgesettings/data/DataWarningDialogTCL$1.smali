.class Lcom/android/lgesettings/data/DataWarningDialogTCL$1;
.super Ljava/lang/Object;
.source "DataWarningDialogTCL.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/data/DataWarningDialogTCL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/data/DataWarningDialogTCL;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/data/DataWarningDialogTCL;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL$1;->this$0:Lcom/android/lgesettings/data/DataWarningDialogTCL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL$1;->this$0:Lcom/android/lgesettings/data/DataWarningDialogTCL;

    #setter for: Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheck:Z
    invoke-static {v0, p2}, Lcom/android/lgesettings/data/DataWarningDialogTCL;->access$002(Lcom/android/lgesettings/data/DataWarningDialogTCL;Z)Z

    .line 99
    return-void
.end method
