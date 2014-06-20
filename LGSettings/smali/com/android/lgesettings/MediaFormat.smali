.class public Lcom/android/lgesettings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalTextView:Landroid/widget/TextView;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialTextView:Landroid/widget/TextView;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    new-instance v0, Lcom/android/lgesettings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/MediaFormat$1;-><init>(Lcom/android/lgesettings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 112
    new-instance v0, Lcom/android/lgesettings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/MediaFormat$2;-><init>(Lcom/android/lgesettings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/MediaFormat;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/lgesettings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/MediaFormat;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 4

    .prologue
    const v3, 0x7f0a01b1

    .line 124
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f0a01b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/storage/USBstorage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f080ede

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 152
    return-void

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 138
    const-string v0, "hsmodel"

    const-string v1, "mediaformat, internal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f080c02

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 144
    :cond_3
    const-string v0, "hsmodel"

    const-string v1, "mediaformat, sdcard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f080c04

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 5

    .prologue
    const v4, 0x7f080bfb

    const v3, 0x7f0a01b3

    .line 167
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0a01b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/storage/USBstorage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v1, 0x7f080edf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    const v1, 0x7f080edd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 197
    return-void

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    const-string v0, "hsmodel"

    const-string v1, "mediaformat, internal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/MediaFormat;->setTitle(I)V

    .line 183
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 184
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    const v1, 0x7f080c01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 189
    :cond_3
    const-string v0, "hsmodel"

    const-string v1, "mediaformat, sdcard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v1, 0x7f0804d0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 191
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    const v1, 0x7f080c03

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 82
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0804d3

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0804d4

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 92
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/android/lgesettings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 100
    :cond_1
    if-nez p2, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/android/lgesettings/MediaFormat;->finish()V

    goto :goto_0

    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    iput-object v3, p0, Lcom/android/lgesettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 203
    invoke-virtual {p0}, Lcom/android/lgesettings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 204
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 205
    const-string v2, "storage_volume"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    iput-object v2, p0, Lcom/android/lgesettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 207
    :cond_0
    iput-object v3, p0, Lcom/android/lgesettings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 208
    iput-object v3, p0, Lcom/android/lgesettings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 209
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    invoke-direct {p0}, Lcom/android/lgesettings/MediaFormat;->establishInitialState()V

    .line 212
    invoke-virtual {p0}, Lcom/android/lgesettings/MediaFormat;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 213
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 214
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 216
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 234
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/lgesettings/MediaFormat;->finish()V

    .line 236
    const/4 v1, 0x1

    .line 238
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 226
    invoke-virtual {p0}, Lcom/android/lgesettings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/android/lgesettings/MediaFormat;->establishInitialState()V

    .line 229
    :cond_0
    return-void
.end method
