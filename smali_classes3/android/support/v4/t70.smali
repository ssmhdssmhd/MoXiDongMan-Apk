.class public final enum Landroid/support/v4/t70;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/t70;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AES:Landroid/support/v4/t70;

.field public static final enum NONE:Landroid/support/v4/t70;

.field public static final enum ZIP_STANDARD:Landroid/support/v4/t70;

.field public static final enum ZIP_STANDARD_VARIANT_STRONG:Landroid/support/v4/t70;

.field private static final synthetic do:[Landroid/support/v4/t70;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/support/v4/t70;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/t70;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/t70;->NONE:Landroid/support/v4/t70;

    .line 2
    new-instance v1, Landroid/support/v4/t70;

    const-string v3, "ZIP_STANDARD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/v4/t70;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/v4/t70;->ZIP_STANDARD:Landroid/support/v4/t70;

    .line 3
    new-instance v3, Landroid/support/v4/t70;

    const-string v5, "ZIP_STANDARD_VARIANT_STRONG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/v4/t70;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/v4/t70;->ZIP_STANDARD_VARIANT_STRONG:Landroid/support/v4/t70;

    .line 4
    new-instance v5, Landroid/support/v4/t70;

    const-string v7, "AES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/support/v4/t70;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/support/v4/t70;->AES:Landroid/support/v4/t70;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/support/v4/t70;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Landroid/support/v4/t70;->do:[Landroid/support/v4/t70;

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

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/t70;
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/t70;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/t70;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/t70;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/t70;->do:[Landroid/support/v4/t70;

    invoke-virtual {v0}, [Landroid/support/v4/t70;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/t70;

    return-object v0
.end method
