.class public final enum Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseBackupPinNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

.field public static final enum Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;


# instance fields
.field public final buttonText:I

.field public numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7f080186

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    const-string v1, "Introduction"

    const v2, 0x7f080b43

    const v3, 0x7f08017c

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    .line 151
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    const-string v1, "NeedToConfirm"

    const v2, 0x7f080b44

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    .line 154
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    const-string v1, "ConfirmWrong"

    const v2, 0x7f080b96

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->$VALUES:[Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "hintInNumeric"
    .parameter "nextButtonText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput p3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->numericHint:I

    .line 162
    iput p4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->buttonText:I

    .line 163
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;
    .locals 1
    .parameter

    .prologue
    .line 146
    const-class v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->$VALUES:[Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    return-object v0
.end method
