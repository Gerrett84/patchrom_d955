.class Lcom/android/providers/settings/CAItem;
.super Ljava/lang/Object;
.source "SettingsProviderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/CAItem$SettingItem;
    }
.end annotation


# instance fields
.field public mGid:Ljava/lang/String;

.field public mImsi:Ljava/lang/String;

.field public mMcc:Ljava/lang/String;

.field public mMnc:Ljava/lang/String;

.field public mSettingItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/CAItem$SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field public mSpn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 866
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/CAItem;->mSettingItems:Ljava/util/ArrayList;

    .line 868
    return-void
.end method


# virtual methods
.method public addSettingItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "value"

    .prologue
    .line 871
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/providers/settings/CAItem;->mSettingItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/providers/settings/CAItem$SettingItem;

    invoke-direct {v1, p1, p2}, Lcom/android/providers/settings/CAItem$SettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    :cond_0
    return-void
.end method
