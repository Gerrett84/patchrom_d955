.class public Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;
.super Ljava/lang/Object;
.source "LGBluetoothTutorialAlertDialog.java"


# static fields
.field private static final IS_OPERATOR_VZW:Z

.field private static mBtState:I

.field private static mDialog:Landroid/app/AlertDialog;

.field private static mPopupPref:Landroid/content/SharedPreferences;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCkBox:Landroid/widget/CheckBox;

.field private mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

.field mNegativeButtonLabel:I

.field mPositiveButtonLabel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mDialog:Landroid/app/AlertDialog;

    .line 80
    const-string v0, "VZW"

    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->IS_OPERATOR_VZW:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mActivity:Landroid/app/Activity;

    .line 85
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mActivity:Landroid/app/Activity;

    .line 87
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    .line 90
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    .line 91
    const-string v0, "LGBluetoothTutorialAlertDialog"

    const-string v1, "mLocalManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->buildBtTutorialAlertDialog()V

    .line 99
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mCkBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mCkBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$100()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mPopupPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mBtState:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mBtState:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private buildBtTutorialAlertDialog()V
    .locals 7

    .prologue
    .line 105
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040024

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 112
    .local v3, layout:Landroid/widget/ScrollView;
    const v4, 0x7f0a004a

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 113
    .local v0, alertCheck:Landroid/widget/CheckBox;
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$1;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget-boolean v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->IS_OPERATOR_VZW:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    const v4, 0x7f0a0049

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, alertText:Landroid/widget/TextView;
    const-string v4, "VZW"

    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    const v4, 0x7f081515

    iput v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mPositiveButtonLabel:I

    .line 133
    const v4, 0x7f081516

    iput v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mNegativeButtonLabel:I

    .line 134
    const v4, 0x7f08151d

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 135
    const v4, 0x7f08151a

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 144
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f081519

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mPositiveButtonLabel:I

    new-instance v6, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;

    invoke-direct {v6, p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$3;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;Landroid/widget/ScrollView;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mNegativeButtonLabel:I

    new-instance v6, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$2;

    invoke-direct {v6, p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$2;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;Landroid/widget/ScrollView;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mDialog:Landroid/app/AlertDialog;

    .line 220
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 228
    .end local v0           #alertCheck:Landroid/widget/CheckBox;
    .end local v1           #alertText:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 138
    .restart local v0       #alertCheck:Landroid/widget/CheckBox;
    .restart local v1       #alertText:Landroid/widget/TextView;
    :cond_0
    const v4, 0x7f081515

    iput v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mPositiveButtonLabel:I

    .line 139
    const v4, 0x7f081516

    iput v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mNegativeButtonLabel:I

    .line 140
    const v4, 0x7f08151d

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 141
    const v4, 0x7f08151b

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v0           #alertCheck:Landroid/widget/CheckBox;
    .end local v1           #alertText:Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 224
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "LGBluetoothTutorialAlertDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildBtTutorialAlertDialog Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized showBtTutorialAlertDialog(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 233
    const-class v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    monitor-enter v2

    :try_start_0
    const-string v1, "LGBluetoothTutorialAlertDialog"

    const-string v3, "showBtTutorialAlertDialog()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v1, "Bt_Tutorial_Pref_Name"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mPopupPref:Landroid/content/SharedPreferences;

    .line 239
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;-><init>(Landroid/app/Activity;)V

    .line 240
    .local v0, tutorialAlertDialog:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;
    if-nez v0, :cond_1

    .line 241
    const-string v1, "LGBluetoothTutorialAlertDialog"

    const-string v3, "BtTutorialAlertDialog is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 248
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    .end local v0           #tutorialAlertDialog:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
