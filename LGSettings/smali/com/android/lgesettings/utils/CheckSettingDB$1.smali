.class Lcom/android/lgesettings/utils/CheckSettingDB$1;
.super Ljava/lang/Object;
.source "CheckSettingDB.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/utils/CheckSettingDB;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/utils/CheckSettingDB;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/utils/CheckSettingDB;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/lgesettings/utils/CheckSettingDB$1;->this$0:Lcom/android/lgesettings/utils/CheckSettingDB;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 73
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB$1;->this$0:Lcom/android/lgesettings/utils/CheckSettingDB;

    #getter for: Lcom/android/lgesettings/utils/CheckSettingDB;->mDBvalue:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/utils/CheckSettingDB;->access$000(Lcom/android/lgesettings/utils/CheckSettingDB;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Write DB name & push button"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
