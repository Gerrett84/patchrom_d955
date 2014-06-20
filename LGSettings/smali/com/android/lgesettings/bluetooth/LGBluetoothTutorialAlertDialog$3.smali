.class Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;
.super Ljava/lang/Object;
.source "LGBluetoothTutorialAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->buildBtTutorialAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

.field final synthetic val$layout:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;Landroid/widget/ScrollView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;->val$layout:Landroid/widget/ScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 152
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->setHelpAppValueONandShowing()V

    .line 156
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$100()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, popupEdit:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;->val$layout:Landroid/widget/ScrollView;

    const v4, 0x7f0a004a

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mCkBox:Landroid/widget/CheckBox;
    invoke-static {v3, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$002(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 159
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$100()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "Bt_Tutorial_Pref_Check_Key"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 161
    .local v1, tutorialChecked:Z
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mCkBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    const-string v2, "LGBluetoothTutorialAlertDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT_TUTORIAL_PREF_CHECK_KEY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", and put BT_TUTORIAL_CHECKED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v2, "Bt_Tutorial_Pref_Check_Key"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$302(I)I

    .line 178
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$300()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 179
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->showTutorialPopup(Landroid/content/Context;I)V

    .line 190
    :cond_2
    :goto_1
    const-string v2, "LGBluetoothTutorialAlertDialog"

    const-string v3, "Positive Button, calling registerReceiver(LGBluetoothTutorialReceiver)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->registerBtTutorialReceiver()V

    .line 194
    return-void

    .line 165
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mCkBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    const-string v2, "LGBluetoothTutorialAlertDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT_TUTORIAL_PREF_CHECK_KEY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", and put BT_TUTORIAL_UNCHECKED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v2, "Bt_Tutorial_Pref_Check_Key"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 181
    :cond_4
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$300()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 183
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->showTutorialPopup(Landroid/content/Context;I)V

    goto :goto_1
.end method
