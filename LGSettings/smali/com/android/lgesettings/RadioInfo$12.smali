.class Lcom/android/lgesettings/RadioInfo$12;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/lgesettings/RadioInfo$12;->this$0:Lcom/android/lgesettings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 933
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 934
    iget-object v1, p0, Lcom/android/lgesettings/RadioInfo$12;->this$0:Lcom/android/lgesettings/RadioInfo;

    const-class v2, Lcom/android/lgesettings/BandMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 935
    iget-object v1, p0, Lcom/android/lgesettings/RadioInfo$12;->this$0:Lcom/android/lgesettings/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 936
    const/4 v0, 0x1

    return v0
.end method
