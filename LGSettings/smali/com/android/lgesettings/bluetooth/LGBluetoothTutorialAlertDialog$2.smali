.class Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$2;
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
    .line 196
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$2;->val$layout:Landroid/widget/ScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$2;->val$layout:Landroid/widget/ScrollView;

    const v3, 0x7f0a004a

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mCkBox:Landroid/widget/CheckBox;
    invoke-static {v2, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$002(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 201
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mCkBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->setHelpAppValueOFF()V

    .line 211
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$100()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    .local v0, popupEdit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Bt_Tutorial_Pref_Check_Key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void

    .line 205
    .end local v0           #popupEdit:Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mCkBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->setHelpAppValueON()V

    goto :goto_0
.end method
