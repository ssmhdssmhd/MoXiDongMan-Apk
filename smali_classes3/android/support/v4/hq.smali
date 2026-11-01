.class public final enum Landroid/support/v4/hq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/hq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AES_INTERNAL_ONLY:Landroid/support/v4/hq;

.field public static final enum DEFLATE:Landroid/support/v4/hq;

.field public static final enum STORE:Landroid/support/v4/hq;

.field private static final synthetic do:[Landroid/support/v4/hq;


# instance fields
.field private code:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroid/support/v4/hq;

    const-string v1, "STORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v4/hq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v4/hq;->STORE:Landroid/support/v4/hq;

    .line 2
    new-instance v1, Landroid/support/v4/hq;

    const-string v3, "DEFLATE"

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-direct {v1, v3, v4, v5}, Landroid/support/v4/hq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/support/v4/hq;->DEFLATE:Landroid/support/v4/hq;

    .line 3
    new-instance v3, Landroid/support/v4/hq;

    const-string v5, "AES_INTERNAL_ONLY"

    const/4 v6, 0x2

    const/16 v7, 0x63

    invoke-direct {v3, v5, v6, v7}, Landroid/support/v4/hq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/support/v4/hq;->AES_INTERNAL_ONLY:Landroid/support/v4/hq;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/support/v4/hq;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Landroid/support/v4/hq;->do:[Landroid/support/v4/hq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Landroid/support/v4/hq;->code:I

    return-void
.end method

.method public static getCompressionMethodFromCode(I)Landroid/support/v4/hq;
    .locals 5

    .line 1
    invoke-static {}, Landroid/support/v4/hq;->values()[Landroid/support/v4/hq;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Landroid/support/v4/hq;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/hq;
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/hq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/hq;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/hq;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/hq;->do:[Landroid/support/v4/hq;

    invoke-virtual {v0}, [Landroid/support/v4/hq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/hq;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/hq;->code:I

    return v0
.end method
