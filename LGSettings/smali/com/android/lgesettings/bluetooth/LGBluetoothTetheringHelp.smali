.class public Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;
.super Landroid/app/Activity;
.source "LGBluetoothTetheringHelp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;
    }
.end annotation


# instance fields
.field private final ALPHAVALUE:I

.field private final ALPHAVALUEMAX:I

.field private Page_Count:I

.field private TwoButtonlayout:Landroid/widget/LinearLayout;

.field private isAnimated:Z

.field private mBtnLayout:Landroid/widget/LinearLayout;

.field private mButtonClick:Landroid/view/View$OnClickListener;

.field private mLayoutArray:[I

.field private mNext:Landroid/widget/Button;

.field private mPageMark:Landroid/widget/LinearLayout;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPrev:Landroid/widget/Button;

.field private mPrevPosition:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->ALPHAVALUE:I

    .line 52
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->ALPHAVALUEMAX:I

    .line 54
    iput v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->Page_Count:I

    .line 56
    iput v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPrevPosition:I

    .line 66
    new-array v0, v1, [I

    const v1, 0x7f040094

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mLayoutArray:[I

    .line 78
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$1;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$2;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mButtonClick:Landroid/view/View$OnClickListener;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->isAnimated:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->Page_Count:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPageMark:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPrevPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPrevPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPrev:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->TwoButtonlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mLayoutArray:[I

    return-object v0
.end method

.method private setButtonAlpha(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    const/16 v1, 0xff

    .line 350
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 351
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->TwoButtonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 352
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mNext:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 353
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPrev:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 355
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->setButtonAlpha(Landroid/content/res/Configuration;)V

    .line 362
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v1, 0x7f04001f

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->setContentView(I)V

    .line 123
    const v1, 0x7f0804fb

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->setTitle(I)V

    .line 125
    const v1, 0x7f0a003d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPageMark:Landroid/widget/LinearLayout;

    .line 126
    const v1, 0x7f0a003c

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mBtnLayout:Landroid/widget/LinearLayout;

    .line 127
    const v1, 0x7f0a0040

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->TwoButtonlayout:Landroid/widget/LinearLayout;

    .line 133
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 134
    .local v0, ActionBarCompat:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 137
    const-string v1, "LGBluetoothTetheringHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGBluetoothTetheringHelpGuide onCreate mPageMark : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPageMark:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const v1, 0x7f0a003b

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPager:Landroid/support/v4/view/ViewPager;

    .line 140
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$BkPagerAdapter;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 141
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 188
    const v1, 0x7f0a0041

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPrev:Landroid/widget/Button;

    .line 189
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPrev:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPrev:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mNext:Landroid/widget/Button;

    .line 195
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mNext:Landroid/widget/Button;

    const v2, 0x7f081438

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 196
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mNext:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->TwoButtonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->setButtonAlpha(Landroid/content/res/Configuration;)V

    .line 201
    iput-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->isAnimated:Z

    .line 203
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 224
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 368
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 376
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 370
    :pswitch_0
    const-string v0, "TAG"

    const-string v1, "[BTUI] Pressed title back button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->finish()V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 214
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 209
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 219
    return-void
.end method
