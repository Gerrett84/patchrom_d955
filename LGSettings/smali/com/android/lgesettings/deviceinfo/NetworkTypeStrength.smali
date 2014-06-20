.class public Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;
.super Landroid/preference/PreferenceActivity;
.source "NetworkTypeStrength.java"


# static fields
.field private static callLevel:I

.field private static callService:Ljava/lang/String;

.field private static callTech:Ljava/lang/String;

.field private static callValue:I

.field private static dBm:Ljava/lang/String;

.field private static dataLevel:I

.field private static dataService:Ljava/lang/String;

.field private static dataTech:Ljava/lang/String;

.field private static dataValue:I


# instance fields
.field private KEY_CALL_STATUS_0:Ljava/lang/String;

.field private KEY_CALL_STATUS_1:Ljava/lang/String;

.field private KEY_CALL_STATUS_2:Ljava/lang/String;

.field private KEY_CALL_STATUS_3:Ljava/lang/String;

.field private KEY_CALL_STATUS_4:Ljava/lang/String;

.field private KEY_CALL_STATUS_5:Ljava/lang/String;

.field private KEY_DATA_STATUS_0:Ljava/lang/String;

.field private KEY_DATA_STATUS_1:Ljava/lang/String;

.field private KEY_DATA_STATUS_2:Ljava/lang/String;

.field private KEY_DATA_STATUS_3:Ljava/lang/String;

.field private KEY_DATA_STATUS_4:Ljava/lang/String;

.field private KEY_DATA_STATUS_5:Ljava/lang/String;

.field private mCall_0:Landroid/preference/PreferenceScreen;

.field private mCall_1:Landroid/preference/PreferenceScreen;

.field private mCall_2:Landroid/preference/PreferenceScreen;

.field private mCall_3:Landroid/preference/PreferenceScreen;

.field private mCall_4:Landroid/preference/PreferenceScreen;

.field private mCall_5:Landroid/preference/PreferenceScreen;

.field private mData_1:Landroid/preference/PreferenceScreen;

.field private mData_2:Landroid/preference/PreferenceScreen;

.field private mData_3:Landroid/preference/PreferenceScreen;

.field private mData_4:Landroid/preference/PreferenceScreen;

.field private mData_5:Landroid/preference/PreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callService:Ljava/lang/String;

    .line 29
    sput v1, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callLevel:I

    .line 30
    sput v1, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callValue:I

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callTech:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataService:Ljava/lang/String;

    .line 33
    sput v1, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataLevel:I

    .line 34
    sput v1, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataValue:I

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataTech:Ljava/lang/String;

    .line 37
    const-string v0, "dBm"

    sput-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dBm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength$1;-><init>(Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    const-string v0, "data_status_0"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_0:Ljava/lang/String;

    .line 84
    const-string v0, "data_status_1"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_1:Ljava/lang/String;

    .line 85
    const-string v0, "data_status_2"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_2:Ljava/lang/String;

    .line 86
    const-string v0, "data_status_3"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_3:Ljava/lang/String;

    .line 87
    const-string v0, "data_status_4"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_4:Ljava/lang/String;

    .line 88
    const-string v0, "data_status_5"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_5:Ljava/lang/String;

    .line 90
    const-string v0, "call_status_0"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_0:Ljava/lang/String;

    .line 91
    const-string v0, "call_status_1"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_1:Ljava/lang/String;

    .line 92
    const-string v0, "call_status_2"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_2:Ljava/lang/String;

    .line 93
    const-string v0, "call_status_3"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_3:Ljava/lang/String;

    .line 94
    const-string v0, "call_status_4"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_4:Ljava/lang/String;

    .line 95
    const-string v0, "call_status_5"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_5:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callLevel:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callLevel:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callValue:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callValue:I

    return p0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataLevel:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataLevel:I

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataValue:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataValue:I

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callService:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-object p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callTech:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-object p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callTech:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataService:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-object p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataTech:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-object p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataTech:Ljava/lang/String;

    return-object p0
.end method

.method private makePreference()V
    .locals 1

    .prologue
    .line 144
    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->addPreferencesFromResource(I)V

    .line 146
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 351
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    :cond_0
    return-void
.end method

.method private updatePreference(II)V
    .locals 8
    .parameter "data"
    .parameter "call"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 149
    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataService:Ljava/lang/String;

    const-string v1, "valid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataService:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataService:Ljava/lang/String;

    const-string v1, "invalid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    :cond_0
    if-nez p1, :cond_9

    .line 152
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 206
    :cond_1
    :goto_0
    sget v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataValue:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataTech:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 207
    :cond_2
    const-string v0, "NetworkTypeStrength"

    const-string v1, "#########################################"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->cleanDataPreference()V

    .line 209
    const-string v0, "NetworkTypeStrength"

    const-string v1, "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callService:Ljava/lang/String;

    const-string v1, "valid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callService:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callService:Ljava/lang/String;

    const-string v1, "invalid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 222
    :cond_4
    if-nez p2, :cond_f

    .line 223
    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataService:Ljava/lang/String;

    const-string v1, "noservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    sget v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataValue:I

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 278
    :cond_6
    :goto_2
    sget v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callValue:I

    if-nez v0, :cond_8

    .line 279
    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataService:Ljava/lang/String;

    const-string v1, "noservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    sget v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataValue:I

    if-eqz v0, :cond_7

    .line 280
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 282
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 303
    :cond_8
    :goto_3
    return-void

    .line 160
    :cond_9
    if-ne p1, v3, :cond_a

    .line 161
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mData_1:Landroid/preference/PreferenceScreen;

    .line 167
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mData_1:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataTech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dBm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 169
    :cond_a
    if-ne p1, v4, :cond_b

    .line 170
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mData_2:Landroid/preference/PreferenceScreen;

    .line 176
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mData_2:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataTech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dBm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 178
    :cond_b
    if-ne p1, v5, :cond_c

    .line 179
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mData_3:Landroid/preference/PreferenceScreen;

    .line 185
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mData_3:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataTech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dBm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 187
    :cond_c
    if-ne p1, v6, :cond_d

    .line 188
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_4:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mData_4:Landroid/preference/PreferenceScreen;

    .line 194
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mData_4:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataTech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dBm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 196
    :cond_d
    if-ne p1, v7, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_5:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mData_5:Landroid/preference/PreferenceScreen;

    .line 203
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mData_5:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataTech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dBm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 212
    :cond_e
    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataService:Ljava/lang/String;

    const-string v1, "noservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 233
    :cond_f
    if-ne p2, v3, :cond_10

    .line 234
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mCall_1:Landroid/preference/PreferenceScreen;

    .line 240
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mCall_1:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callTech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dBm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 242
    :cond_10
    if-ne p2, v4, :cond_11

    .line 243
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mCall_2:Landroid/preference/PreferenceScreen;

    .line 249
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mCall_2:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callTech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dBm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 251
    :cond_11
    if-ne p2, v5, :cond_12

    .line 252
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mCall_3:Landroid/preference/PreferenceScreen;

    .line 258
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mCall_3:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callTech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dBm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 260
    :cond_12
    if-ne p2, v6, :cond_13

    .line 261
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_4:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mCall_4:Landroid/preference/PreferenceScreen;

    .line 267
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mCall_4:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callTech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dBm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 269
    :cond_13
    if-ne p2, v7, :cond_6

    .line 270
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_5:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mCall_5:Landroid/preference/PreferenceScreen;

    .line 276
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mCall_5:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callTech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dBm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 290
    :cond_14
    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callService:Ljava/lang/String;

    const-string v1, "noservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 291
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataService:Ljava/lang/String;

    const-string v1, "noservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p1, :cond_15

    sget v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataValue:I

    if-eqz v0, :cond_15

    .line 297
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 299
    :cond_15
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mCall_0:Landroid/preference/PreferenceScreen;

    .line 300
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mCall_0:Landroid/preference/PreferenceScreen;

    const v1, 0x7f080a77

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public cleanAllPreference()V
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 311
    :cond_0
    return-void
.end method

.method public cleanDataPreference()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 346
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->makePreference()V

    .line 102
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_0:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_DATA_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_1:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_2:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_3:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_4:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_5:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->KEY_CALL_STATUS_0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f080a77

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 122
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 128
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 359
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 361
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->finish()V

    .line 363
    const/4 v1, 0x1

    .line 366
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 338
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 339
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 330
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 331
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.signalstrength"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    return-void
.end method

.method public updateStatus()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->cleanAllPreference()V

    .line 133
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->makePreference()V

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, call:I
    const/4 v1, 0x0

    .line 137
    .local v1, data:I
    sget v0, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->callLevel:I

    .line 138
    sget v1, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->dataLevel:I

    .line 139
    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/NetworkTypeStrength;->updatePreference(II)V

    .line 141
    return-void
.end method
