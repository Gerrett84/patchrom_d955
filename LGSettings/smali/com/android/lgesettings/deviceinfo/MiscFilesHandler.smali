.class public Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;
.super Landroid/app/ListActivity;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;,
        Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumBytesSelectedFormat:Ljava/lang/String;

.field private mNumSelectedFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->setFinishOnTouchOutside(Z)V

    .line 76
    const v2, 0x7f08079d

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->setTitle(I)V

    .line 77
    const v2, 0x7f08079e

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    .line 78
    const v2, 0x7f08079f

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    .line 79
    new-instance v2, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {v2, p0, p0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    .line 80
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    const v2, 0x7f040138

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 83
    .local v1, lv:Landroid/widget/ListView;
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 84
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 85
    new-instance v2, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {v2, p0, p0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$ModeCallback;-><init>(Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 86
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/lgesettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 214
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;->finish()V

    .line 216
    const/4 v1, 0x1

    .line 218
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
