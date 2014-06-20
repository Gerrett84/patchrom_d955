.class public Lcom/android/lgesettings/utils/CheckSettingDB;
.super Landroid/app/Activity;
.source "CheckSettingDB.java"


# instance fields
.field private list:[Ljava/lang/String;

.field private mDBfind:Landroid/widget/Button;

.field private mDBname:Landroid/widget/AutoCompleteTextView;

.field private mDBpush:Landroid/widget/Button;

.field private mDBsetValue:Landroid/widget/AutoCompleteTextView;

.field private mDBvalue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "timed_silent_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "quiet_time_check_vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "quiet_time_check_days"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "quiet_mode_status"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "smart_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gentle_vibration_status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "quiet_mode_support_model"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "quietmode_auto_reply_message"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "quietmode_auto_reply_option"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "quiet_mode_check_repeated_call"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "quiet_mode_check_block_incoming_calls"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "default_vibrate_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "default_vibrate_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "default_sub_vibrate_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "default_third_vibrate_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "user_vibration_conut"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hands_free_mode_status"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "hands_free_mode_call"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "hands_free_mode_message"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hands_free_mode_read_message"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "lockscreen_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "haptic_feedback_enabled"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->list:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/utils/CheckSettingDB;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBvalue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/utils/CheckSettingDB;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBname:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/utils/CheckSettingDB;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBsetValue:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f040030

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckSettingDB;->setContentView(I)V

    .line 58
    const-string v0, "Settigns.System DB find"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckSettingDB;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckSettingDB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBname:Landroid/widget/AutoCompleteTextView;

    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBname:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x109000a

    iget-object v3, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->list:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckSettingDB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBvalue:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckSettingDB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBfind:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBname:Landroid/widget/AutoCompleteTextView;

    const-string v1, "input DB name"

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBname:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->setSingleLine()V

    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBvalue:Landroid/widget/TextView;

    const-string v1, "Write DB name & push button"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBfind:Landroid/widget/Button;

    const-string v1, "find"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBfind:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/utils/CheckSettingDB$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/utils/CheckSettingDB$1;-><init>(Lcom/android/lgesettings/utils/CheckSettingDB;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBfind:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/utils/CheckSettingDB$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/utils/CheckSettingDB$2;-><init>(Lcom/android/lgesettings/utils/CheckSettingDB;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f0a0066

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckSettingDB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBsetValue:Landroid/widget/AutoCompleteTextView;

    .line 105
    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckSettingDB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBpush:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBsetValue:Landroid/widget/AutoCompleteTextView;

    const-string v1, "write db value"

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBpush:Landroid/widget/Button;

    const-string v1, "push"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckSettingDB;->mDBpush:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/utils/CheckSettingDB$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/utils/CheckSettingDB$3;-><init>(Lcom/android/lgesettings/utils/CheckSettingDB;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method
