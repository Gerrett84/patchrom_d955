.class Lcom/android/lgesettings/utils/PRI_Setting$2;
.super Ljava/lang/Object;
.source "PRI_Setting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/utils/PRI_Setting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/utils/PRI_Setting;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/utils/PRI_Setting;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/lgesettings/utils/PRI_Setting$2;->this$0:Lcom/android/lgesettings/utils/PRI_Setting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 186
    iget-object v4, p0, Lcom/android/lgesettings/utils/PRI_Setting$2;->this$0:Lcom/android/lgesettings/utils/PRI_Setting;

    invoke-virtual {v4}, Lcom/android/lgesettings/utils/PRI_Setting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 187
    .local v0, l:Landroid/widget/ListView;
    iget-object v4, p0, Lcom/android/lgesettings/utils/PRI_Setting$2;->this$0:Lcom/android/lgesettings/utils/PRI_Setting;

    #getter for: Lcom/android/lgesettings/utils/PRI_Setting;->mDialogId:I
    invoke-static {v4}, Lcom/android/lgesettings/utils/PRI_Setting;->access$000(Lcom/android/lgesettings/utils/PRI_Setting;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 188
    .local v1, map:Ljava/util/Map;
    if-nez v1, :cond_0

    .line 190
    const-string v4, "SettingPRI"

    const-string v5, "onCreateDialog(1) map == null -> finish()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v4, p0, Lcom/android/lgesettings/utils/PRI_Setting$2;->this$0:Lcom/android/lgesettings/utils/PRI_Setting;

    invoke-virtual {v4}, Lcom/android/lgesettings/utils/PRI_Setting;->finish()V

    .line 205
    .end local p1
    :goto_0
    return-void

    .line 194
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/utils/PRI_Setting;->access$100()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/utils/PRI_Setting$2;->this$0:Lcom/android/lgesettings/utils/PRI_Setting;

    #getter for: Lcom/android/lgesettings/utils/PRI_Setting;->mDialogId:I
    invoke-static {v5}, Lcom/android/lgesettings/utils/PRI_Setting;->access$000(Lcom/android/lgesettings/utils/PRI_Setting;)I

    move-result v5

    aget-object v2, v4, v5

    .line 195
    .local v2, property:Ljava/lang/String;
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    const v4, 0x7f0a02b1

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, value:Ljava/lang/String;
    const-string v4, "SettingPRI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/utils/PRI_Setting$2;->this$0:Lcom/android/lgesettings/utils/PRI_Setting;

    #getter for: Lcom/android/lgesettings/utils/PRI_Setting;->mDialogId:I
    invoke-static {v6}, Lcom/android/lgesettings/utils/PRI_Setting;->access$000(Lcom/android/lgesettings/utils/PRI_Setting;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]onCreateDialog(2)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v4, "status"

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v4, "status"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
