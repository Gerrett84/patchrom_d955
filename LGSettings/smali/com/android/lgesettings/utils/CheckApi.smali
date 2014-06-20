.class public Lcom/android/lgesettings/utils/CheckApi;
.super Landroid/app/Activity;
.source "CheckApi.java"


# instance fields
.field mCheckApi:Landroid/widget/Button;

.field mResult:Landroid/widget/TextView;

.field mServiceContext:Lcom/lge/systemservice/core/LGContext;

.field mVibrateInput:Landroid/widget/EditText;

.field mVibrateInputNoti:Landroid/widget/EditText;

.field mVibrateInputTouch:Landroid/widget/EditText;

.field mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private CheckVibrateStrength(II)V
    .locals 3
    .parameter "input"
    .parameter "type"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    invoke-virtual {v0, p2, p1}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->setVibrateVolume(II)V

    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mResult:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckApi;->mResult:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Set Vibrate strength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nGet Vibrate strength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckApi;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    invoke-virtual {v2, p2}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    invoke-virtual {v0, p2}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mResult:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckApi;->mResult:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      PASS \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mResult:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckApi;->mResult:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      Fail \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/lgesettings/utils/CheckApi;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/utils/CheckApi;->CheckVibrateStrength(II)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckApi;->setContentView(I)V

    .line 34
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckApi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mVibrateInput:Landroid/widget/EditText;

    .line 35
    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckApi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mVibrateInputNoti:Landroid/widget/EditText;

    .line 36
    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckApi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mVibrateInputTouch:Landroid/widget/EditText;

    .line 37
    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckApi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mCheckApi:Landroid/widget/Button;

    .line 38
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckApi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mResult:Landroid/widget/TextView;

    .line 39
    new-instance v0, Lcom/lge/systemservice/core/LGContextImpl;

    invoke-virtual {p0}, Lcom/android/lgesettings/utils/CheckApi;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContextImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    const-string v1, "volumevibrator"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLegacyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    .line 41
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mResult:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming calls vibrate strength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckApi;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Notification vibrate strength      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckApi;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Vibrate on touch strength         : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckApi;->mVolumeVibrator:Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/volumevibratormanager/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckApi;->mCheckApi:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/utils/CheckApi$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/utils/CheckApi$1;-><init>(Lcom/android/lgesettings/utils/CheckApi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method
