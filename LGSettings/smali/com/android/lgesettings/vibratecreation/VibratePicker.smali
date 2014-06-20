.class public Lcom/android/lgesettings/vibratecreation/VibratePicker;
.super Landroid/preference/PreferenceActivity;
.source "VibratePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private isDualSim:Z

.field private isTripleSim:Z

.field private len:I

.field mAdapter:Lcom/android/lgesettings/vibratecreation/VibrateAdapter;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDefaultVibrate:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mOklBtn:Landroid/widget/Button;

.field private mOriginalDefaultPattern:Ljava/lang/String;

.field private mOriginalDefaultVibrate:Ljava/lang/String;

.field private mParent_Type:I

.field private mPatternName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReNameVibrate:Ljava/lang/String;

.field private mRemovePosition:I

.field private mSelectPattern:Ljava/lang/String;

.field private mSelectVibrate:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field private mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->isDualSim:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->isTripleSim:Z

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    .line 77
    const-string v0, "empty"

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/android/lgesettings/vibratecreation/VibratePicker$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker$1;-><init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mAdapter:Lcom/android/lgesettings/vibratecreation/VibrateAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/vibratecreation/VibratePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mRemovePosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOriginalDefaultVibrate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/vibratecreation/VibratePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/lgesettings/vibratecreation/VibratePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->len:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/vibratecreation/VibratePicker;[J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->playVibrate([J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mDefaultVibrate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->updateList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->createRenameDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->removePopup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->maxlengthEditToast()V

    return-void
.end method

.method private createRenameDialog()V
    .locals 7

    .prologue
    .line 707
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 709
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 710
    const v1, 0x7f04018a

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 711
    const v0, 0x7f0a01c3

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 712
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPaintFlags(I)V

    .line 713
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 715
    new-instance v1, Lcom/android/lgesettings/quietmode/ByteLengthFilter;

    const/16 v4, 0xf

    invoke-direct {v1, p0, v4}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;-><init>(Landroid/content/Context;I)V

    .line 716
    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v4, v0}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->setInputProperty(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 717
    new-instance v4, Lcom/android/lgesettings/vibratecreation/VibratePicker$7;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker$7;-><init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->setOnMaxLengthListener(Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;)V

    .line 724
    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 725
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 726
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 727
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 728
    const/16 v4, 0x4000

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 730
    const v4, 0x7f080085

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 731
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0804ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;

    invoke-direct {v5, p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;-><init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 777
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/lgesettings/vibratecreation/VibratePicker$9;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker$9;-><init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 785
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 788
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/lgesettings/vibratecreation/VibratePicker$10;

    invoke-direct {v4, p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker$10;-><init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;Landroid/widget/EditText;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 796
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 798
    new-instance v3, Lcom/android/lgesettings/vibratecreation/VibratePicker$11;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker$11;-><init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;Landroid/widget/EditText;Lcom/android/lgesettings/quietmode/ByteLengthFilter;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 837
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 838
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 839
    return-void
.end method

.method private currentVibrateChecked(Ljava/lang/String;I)I
    .locals 5
    .parameter "vibrationName"
    .parameter "length"

    .prologue
    .line 493
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    .line 495
    const-string v2, "VibratePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[currentVibrateChecked] currentVibrateChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getAllpatternName()Ljava/util/ArrayList;

    move-result-object v1

    .line 497
    .local v1, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 498
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 499
    const-string v3, "VibratePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "child list :  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    const-string v2, "VibratePicker"

    const-string v3, "matching title!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 503
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 507
    :cond_0
    return v0

    .line 498
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private maxlengthEditToast()V
    .locals 2

    .prologue
    const v1, 0x7f080e08

    .line 898
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 899
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mToast:Landroid/widget/Toast;

    .line 904
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 905
    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private maxlengthToast()V
    .locals 2

    .prologue
    const v1, 0x7f080dcf

    .line 888
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 889
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mToast:Landroid/widget/Toast;

    .line 894
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 895
    return-void

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private notCheckedException(I)V
    .locals 7
    .parameter "length"

    .prologue
    .line 512
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mDefaultVibrate:Ljava/lang/String;

    .line 513
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    .line 514
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mDefaultVibrate:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOriginalDefaultVibrate:Ljava/lang/String;

    .line 515
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOriginalDefaultPattern:Ljava/lang/String;

    .line 516
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mDefaultVibrate:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;I)V

    .line 522
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getAllpatternName()Ljava/util/ArrayList;

    move-result-object v1

    .line 523
    .local v1, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 524
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mDefaultVibrate:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    const-string v2, "VibratePicker"

    const-string v3, "[exception] matching title!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 527
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 523
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 520
    .end local v0           #i:I
    .end local v1           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mDefaultVibrate:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    .restart local v0       #i:I
    .restart local v1       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private playVibrate([J)V
    .locals 4
    .parameter "pattern"

    .prologue
    .line 545
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibrator:Landroid/os/Vibrator;

    .line 551
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 552
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->hapticFeedbackOff([J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "VibratePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVibrate() Null point exception!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removePopup(Ljava/lang/String;)V
    .locals 4
    .parameter "patternName"

    .prologue
    .line 645
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 646
    .local v0, removeDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080dd1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;-><init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 662
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 663
    const v1, 0x7f08079c

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 664
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 665
    new-instance v1, Lcom/android/lgesettings/vibratecreation/VibratePicker$5;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker$5;-><init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 674
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 675
    return-void
.end method

.method private selectPopup(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 678
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 679
    .local v0, menu:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 680
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08079c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 681
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;

    .line 682
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    .line 683
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/vibratecreation/VibratePicker$6;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker$6;-><init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 703
    return-void
.end method

.method private setAdapter()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isUserPatternEmply()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setAdapterOnlyList()V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setAdapter_category()V

    goto :goto_0
.end method

.method private setAdapterOnlyList()V
    .locals 3

    .prologue
    .line 296
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04013e

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->adapter:Landroid/widget/ArrayAdapter;

    .line 297
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 298
    return-void
.end method

.method private setAdapter_category()V
    .locals 5

    .prologue
    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mAdapter:Lcom/android/lgesettings/vibratecreation/VibrateAdapter;

    const v1, 0x7f080dda

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f04013e

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getAllPatternName_User()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 303
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mAdapter:Lcom/android/lgesettings/vibratecreation/VibrateAdapter;

    const v1, 0x7f080dd9

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f04013e

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getAllPatternName_LG()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 304
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mAdapter:Lcom/android/lgesettings/vibratecreation/VibrateAdapter;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startActivityVibrateCreation()V
    .locals 3

    .prologue
    .line 466
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getUserPatternCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->maxlengthToast()V

    .line 478
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->vibrateStop()V

    .line 471
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 472
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.vibratecreation.VibrateCreateActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v1, "vibrate_parent_type"

    iget v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateList(Ljava/lang/String;)V
    .locals 5
    .parameter "SelectVibrate"

    .prologue
    .line 364
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->UpdateUserPatternInfo()V

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isUserPatternEmply()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 368
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->adapter:Landroid/widget/ArrayAdapter;

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 377
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getAllpatternName()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;

    .line 378
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->vibrateDBCheck()V

    .line 383
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setAdapter()V

    .line 386
    const-string v2, "VibratePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default Vibrate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mDefaultVibrate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, length:I
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isUserPatternEmply()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 393
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->adapter:Landroid/widget/ArrayAdapter;

    if-eqz v2, :cond_2

    .line 394
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    .line 403
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->currentVibrateChecked(Ljava/lang/String;I)I

    move-result v0

    .line 405
    .local v0, count:I
    const-string v2, "VibratePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    if-ne v0, v1, :cond_3

    .line 408
    invoke-direct {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->notCheckedException(I)V

    .line 410
    :cond_3
    return-void

    .line 373
    .end local v0           #count:I
    .end local v1           #length:I
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mAdapter:Lcom/android/lgesettings/vibratecreation/VibrateAdapter;

    if-eqz v2, :cond_1

    .line 374
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mAdapter:Lcom/android/lgesettings/vibratecreation/VibrateAdapter;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->clear()V

    goto :goto_0

    .line 398
    .restart local v1       #length:I
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mAdapter:Lcom/android/lgesettings/vibratecreation/VibrateAdapter;

    if-eqz v2, :cond_2

    .line 399
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mAdapter:Lcom/android/lgesettings/vibratecreation/VibrateAdapter;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->getCount()I

    move-result v1

    goto :goto_1
.end method

.method private vibrateDBCheck()V
    .locals 4

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080dd6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibrateName(ILjava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mDefaultVibrate:Ljava/lang/String;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    sget-object v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_TYPE:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibratePattern(ILjava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    .line 541
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 323
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 360
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 325
    :sswitch_0
    const-string v3, "VibratePicker"

    const-string v4, "[dispatchKeyEvent] KeyEvent.KEYCODE_HOME"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :sswitch_1
    const-string v3, "VibratePicker"

    const-string v4, "[dispatchKeyEvent] KeyEvent.KEYCODE_DPAD_UP"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :sswitch_2
    const-string v3, "VibratePicker"

    const-string v4, "[dispatchKeyEvent] KeyEvent.KEYCODE_DPAD_DOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :sswitch_3
    const-string v3, "VibratePicker"

    const-string v4, "[dispatchKeyEvent] KeyEvent.KEYCODE_ENTER"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0492

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 339
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_1

    .line 340
    const-string v3, "VibratePicker"

    const-string v4, "[dispatchKeyEvent] focus null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 348
    .local v0, layout:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 349
    .local v1, name:Landroid/widget/TextView;
    const-string v3, "VibratePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dispatchKeyEvent] get title or name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v3, "empty"

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    const/4 v3, 0x1

    goto :goto_1

    .line 343
    .end local v0           #layout:Landroid/widget/LinearLayout;
    .end local v1           #name:Landroid/widget/TextView;
    :cond_1
    const-string v3, "VibratePicker"

    const-string v4, "[dispatchKeyEvent] focus not null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->startActivityVibrateCreation()V

    goto :goto_2

    .line 355
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 353
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 323
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v2, v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mHaptic_value:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 599
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 600
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 601
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setItemSelected(Z)V

    .line 571
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOriginalDefaultVibrate:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    .line 573
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOriginalDefaultPattern:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    .line 574
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;I)V

    .line 592
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getHaptic_value()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 593
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->finish()V

    .line 594
    return-void

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOklBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    .line 583
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, vibrateTitle:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    .line 585
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 586
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 589
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f080ddd

    const v8, 0x7f080ddc

    const v7, 0x7f080cc8

    const v5, 0x7f080cc7

    const/4 v6, 0x1

    .line 113
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v3, 0x7f040189

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setContentView(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 117
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f020356

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 123
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "vibrate_parent_type"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, mUserTitle:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "vibrate_title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "vibrate_title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->isDualSim:Z

    .line 129
    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->isTripleSim:Z

    .line 130
    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_15

    .line 133
    :cond_2
    iget-boolean v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->isTripleSim:Z

    if-ne v6, v3, :cond_c

    .line 134
    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    if-nez v3, :cond_6

    .line 135
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 137
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    .line 270
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mContext:Landroid/content/Context;

    .line 271
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibrator:Landroid/os/Vibrator;

    .line 273
    new-instance v3, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-direct {v3, v4, v5}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    .line 274
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getAllpatternName()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;

    .line 275
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    .line 276
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 277
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 278
    const v3, 0x7f0a006d

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mCancelBtn:Landroid/widget/Button;

    .line 279
    const v3, 0x7f0a004d

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOklBtn:Landroid/widget/Button;

    .line 282
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOklBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 285
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 288
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getTypeDefaultName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOriginalDefaultVibrate:Ljava/lang/String;

    .line 289
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getTypeDefaultPattern(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOriginalDefaultPattern:Ljava/lang/String;

    .line 291
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setAdapter()V

    .line 293
    return-void

    .line 140
    :cond_4
    if-nez v2, :cond_5

    .line 141
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 142
    invoke-virtual {p0, v8}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 145
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 150
    :cond_6
    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    if-ne v6, v3, :cond_9

    .line 151
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 152
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 153
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 156
    :cond_7
    if-nez v2, :cond_8

    .line 157
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/ActionBar;->setTitle(I)V

    .line 158
    invoke-virtual {p0, v9}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 161
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 166
    :cond_9
    const/4 v3, 0x6

    iget v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    if-ne v3, v4, :cond_3

    .line 167
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 168
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f080cc9

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 169
    const v3, 0x7f080cc9

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 172
    :cond_a
    if-nez v2, :cond_b

    .line 173
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f080dde

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 174
    const v3, 0x7f080dde

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 177
    :cond_b
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 183
    :cond_c
    iget-boolean v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->isDualSim:Z

    if-nez v3, :cond_f

    .line 184
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 185
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f080cc6

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 186
    const v3, 0x7f080cc6

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 189
    :cond_d
    if-nez v2, :cond_e

    .line 190
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f080dc7

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 191
    const v3, 0x7f080dc7

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 194
    :cond_e
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 200
    :cond_f
    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    if-nez v3, :cond_12

    .line 201
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 202
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 203
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 206
    :cond_10
    if-nez v2, :cond_11

    .line 207
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 208
    invoke-virtual {p0, v8}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 211
    :cond_11
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 216
    :cond_12
    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    if-ne v6, v3, :cond_3

    .line 217
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 218
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 219
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 222
    :cond_13
    if-nez v2, :cond_14

    .line 223
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/ActionBar;->setTitle(I)V

    .line 224
    invoke-virtual {p0, v9}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 227
    :cond_14
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 233
    :cond_15
    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_17

    .line 234
    if-nez v2, :cond_16

    .line 235
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f080cc3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 236
    const v3, 0x7f080cc3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 239
    :cond_16
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 242
    :cond_17
    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_19

    .line 243
    if-nez v2, :cond_18

    .line 244
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f080cc2

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 245
    const v3, 0x7f080cc2

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 248
    :cond_18
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 251
    :cond_19
    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1b

    .line 252
    if-nez v2, :cond_1a

    .line 253
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f080cc4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 254
    const v3, 0x7f080cc4

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 257
    :cond_1a
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 260
    :cond_1b
    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 261
    if-nez v2, :cond_1c

    .line 262
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f080cc5

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 263
    const v3, 0x7f080cc5

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 266
    :cond_1c
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 483
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 485
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 444
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 445
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v2, v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mHaptic_value:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 446
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 864
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 867
    const-string v1, "VibratePicker"

    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v0, "soosin"

    const-string v1, "onItemClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/lgesettings/vibratecreation/VibratePicker$12;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker$12;-><init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 884
    const-string v0, "VibratePicker"

    const-string v1, "after thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 845
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isLGName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibrator:Landroid/os/Vibrator;

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 851
    invoke-direct {p0, p3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->selectPopup(I)V

    .line 854
    :cond_1
    iput p3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mRemovePosition:I

    .line 855
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 856
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 451
    const-string v0, "VibratePicker"

    const-string v1, "[onOptionsItemSelected] go to VibrateCreateActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v0, "VibratePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOptionsItemSelected] LG pattern count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getUserPatternCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v2, v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mHaptic_value:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 456
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 457
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->finish()V

    .line 458
    const/4 v0, 0x1

    .line 462
    :goto_0
    return v0

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->startActivityVibrateCreation()V

    .line 462
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 428
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 429
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->vibrateStop()V

    .line 430
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-static {}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getItemSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOriginalDefaultVibrate:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOriginalDefaultPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    .line 433
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;I)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 415
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 416
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setItemSelected(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mDefaultVibrate:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mDefaultVibrate:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mDefaultVibrate:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->updateList(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public vibrateStop()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 565
    :cond_0
    return-void
.end method
