.class public abstract Lcom/lge/camera/setting/CameraPreference;
.super Ljava/lang/Object;
.source "CameraPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferenceName:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/lge/camera/setting/CameraPreference;->mContext:Landroid/content/Context;

    .line 17
    sget-object v1, Lcom/lge/camera/R$styleable;->CameraPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 19
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferenceName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "prefName"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lge/camera/setting/CameraPreference;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferenceName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/lge/camera/setting/CameraPreference;->mContext:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 46
    return-void
.end method

.method public getSharedPreferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferenceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/lge/camera/setting/CameraPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferenceName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public abstract reloadValue()V
.end method

.method public setSharedPreferenceName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lge/camera/setting/CameraPreference;->mSharedPreferenceName:Ljava/lang/String;

    .line 30
    return-void
.end method
