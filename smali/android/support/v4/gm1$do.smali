.class public final enum Landroid/support/v4/gm1$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/gm1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/gm1$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FULL:Landroid/support/v4/gm1$do;

.field public static final enum NATIVE_ONLY:Landroid/support/v4/gm1$do;

.field private static final synthetic do:[Landroid/support/v4/gm1$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/support/v4/gm1$do;

    const-string v1, "NATIVE_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/gm1$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/gm1$do;->NATIVE_ONLY:Landroid/support/v4/gm1$do;

    .line 2
    new-instance v1, Landroid/support/v4/gm1$do;

    const-string v3, "FULL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/v4/gm1$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/v4/gm1$do;->FULL:Landroid/support/v4/gm1$do;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/support/v4/gm1$do;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Landroid/support/v4/gm1$do;->do:[Landroid/support/v4/gm1$do;

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

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/gm1$do;
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/gm1$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/gm1$do;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/gm1$do;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/gm1$do;->do:[Landroid/support/v4/gm1$do;

    invoke-virtual {v0}, [Landroid/support/v4/gm1$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/gm1$do;

    return-object v0
.end method
