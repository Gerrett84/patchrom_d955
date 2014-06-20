.class Lcom/android/lgesettings/utils/CheckSettingDB$2;
.super Ljava/lang/Object;
.source "CheckSettingDB.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 82
    iput-object p1, p0, Lcom/android/lgesettings/utils/CheckSettingDB$2;->this$0:Lcom/android/lgesettings/utils/CheckSettingDB;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 87
    const-string v1, "soosin"

    const-string v2, "button click!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/android/lgesettings/utils/CheckSettingDB$2;->this$0:Lcom/android/lgesettings/utils/CheckSettingDB;

    #getter for: Lcom/android/lgesettings/utils/CheckSettingDB;->mDBname:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/lgesettings/utils/CheckSettingDB;->access$100(Lcom/android/lgesettings/utils/CheckSettingDB;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/lgesettings/utils/CheckSettingDB$2;->this$0:Lcom/android/lgesettings/utils/CheckSettingDB;

    invoke-virtual {v1}, Lcom/android/lgesettings/utils/CheckSettingDB;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckSettingDB$2;->this$0:Lcom/android/lgesettings/utils/CheckSettingDB;

    #getter for: Lcom/android/lgesettings/utils/CheckSettingDB;->mDBname:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/android/lgesettings/utils/CheckSettingDB;->access$100(Lcom/android/lgesettings/utils/CheckSettingDB;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/lgesettings/utils/CheckSettingDB$2;->this$0:Lcom/android/lgesettings/utils/CheckSettingDB;

    #getter for: Lcom/android/lgesettings/utils/CheckSettingDB;->mDBvalue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/lgesettings/utils/CheckSettingDB;->access$000(Lcom/android/lgesettings/utils/CheckSettingDB;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB Value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-void

    .line 95
    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/utils/CheckSettingDB$2;->this$0:Lcom/android/lgesettings/utils/CheckSettingDB;

    #getter for: Lcom/android/lgesettings/utils/CheckSettingDB;->mDBvalue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/lgesettings/utils/CheckSettingDB;->access$000(Lcom/android/lgesettings/utils/CheckSettingDB;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "not found value"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    .end local v0           #value:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/utils/CheckSettingDB$2;->this$0:Lcom/android/lgesettings/utils/CheckSettingDB;

    #getter for: Lcom/android/lgesettings/utils/CheckSettingDB;->mDBvalue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/lgesettings/utils/CheckSettingDB;->access$000(Lcom/android/lgesettings/utils/CheckSettingDB;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "write DB name"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
