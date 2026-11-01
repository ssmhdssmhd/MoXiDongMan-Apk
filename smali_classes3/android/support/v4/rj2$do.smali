.class public final enum Landroid/support/v4/rj2$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/rj2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/rj2$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TASK_CANCELLED_EXCEPTION:Landroid/support/v4/rj2$do;

.field public static final enum UNKNOWN:Landroid/support/v4/rj2$do;

.field public static final enum WRONG_PASSWORD:Landroid/support/v4/rj2$do;

.field private static final synthetic do:[Landroid/support/v4/rj2$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/support/v4/rj2$do;

    const-string v1, "WRONG_PASSWORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/rj2$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/rj2$do;->WRONG_PASSWORD:Landroid/support/v4/rj2$do;

    .line 2
    new-instance v1, Landroid/support/v4/rj2$do;

    const-string v3, "TASK_CANCELLED_EXCEPTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/v4/rj2$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/v4/rj2$do;->TASK_CANCELLED_EXCEPTION:Landroid/support/v4/rj2$do;

    .line 3
    new-instance v3, Landroid/support/v4/rj2$do;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/v4/rj2$do;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/v4/rj2$do;->UNKNOWN:Landroid/support/v4/rj2$do;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/support/v4/rj2$do;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Landroid/support/v4/rj2$do;->do:[Landroid/support/v4/rj2$do;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/rj2$do;
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/rj2$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/rj2$do;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/rj2$do;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/rj2$do;->do:[Landroid/support/v4/rj2$do;

    invoke-virtual {v0}, [Landroid/support/v4/rj2$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/rj2$do;

    return-object v0
.end method
