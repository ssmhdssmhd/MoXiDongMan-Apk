.class public final enum Landroid/support/v4/x0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/x0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ONE:Landroid/support/v4/x0;

.field public static final enum TWO:Landroid/support/v4/x0;

.field private static final synthetic do:[Landroid/support/v4/x0;


# instance fields
.field private versionNumber:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/support/v4/x0;

    const-string v1, "ONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/x0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v4/x0;->ONE:Landroid/support/v4/x0;

    .line 2
    new-instance v1, Landroid/support/v4/x0;

    const-string v4, "TWO"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Landroid/support/v4/x0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/support/v4/x0;->TWO:Landroid/support/v4/x0;

    new-array v4, v5, [Landroid/support/v4/x0;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Landroid/support/v4/x0;->do:[Landroid/support/v4/x0;

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
    iput p3, p0, Landroid/support/v4/x0;->versionNumber:I

    return-void
.end method

.method public static getFromVersionNumber(I)Landroid/support/v4/x0;
    .locals 5

    .line 1
    invoke-static {}, Landroid/support/v4/x0;->values()[Landroid/support/v4/x0;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Landroid/support/v4/x0;->versionNumber:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported Aes version"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/x0;
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/x0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/x0;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/x0;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/x0;->do:[Landroid/support/v4/x0;

    invoke-virtual {v0}, [Landroid/support/v4/x0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/x0;

    return-object v0
.end method


# virtual methods
.method public getVersionNumber()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/x0;->versionNumber:I

    return v0
.end method
