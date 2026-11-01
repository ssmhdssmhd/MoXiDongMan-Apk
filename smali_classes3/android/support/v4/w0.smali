.class public final enum Landroid/support/v4/w0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/w0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum KEY_STRENGTH_128:Landroid/support/v4/w0;

.field public static final enum KEY_STRENGTH_192:Landroid/support/v4/w0;

.field public static final enum KEY_STRENGTH_256:Landroid/support/v4/w0;

.field private static final synthetic do:[Landroid/support/v4/w0;


# instance fields
.field private keyLength:I

.field private macLength:I

.field private rawCode:I

.field private saltLength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Landroid/support/v4/w0;

    const-string v1, "KEY_STRENGTH_128"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/16 v6, 0x10

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/w0;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Landroid/support/v4/w0;->KEY_STRENGTH_128:Landroid/support/v4/w0;

    .line 2
    new-instance v0, Landroid/support/v4/w0;

    const-string v9, "KEY_STRENGTH_192"

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/16 v12, 0xc

    const/16 v13, 0x18

    const/16 v14, 0x18

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroid/support/v4/w0;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Landroid/support/v4/w0;->KEY_STRENGTH_192:Landroid/support/v4/w0;

    .line 3
    new-instance v1, Landroid/support/v4/w0;

    const-string v16, "KEY_STRENGTH_256"

    const/16 v17, 0x2

    const/16 v18, 0x3

    const/16 v19, 0x10

    const/16 v20, 0x20

    const/16 v21, 0x20

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Landroid/support/v4/w0;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Landroid/support/v4/w0;->KEY_STRENGTH_256:Landroid/support/v4/w0;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/support/v4/w0;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 4
    sput-object v2, Landroid/support/v4/w0;->do:[Landroid/support/v4/w0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Landroid/support/v4/w0;->rawCode:I

    .line 3
    iput p4, p0, Landroid/support/v4/w0;->saltLength:I

    .line 4
    iput p5, p0, Landroid/support/v4/w0;->macLength:I

    .line 5
    iput p6, p0, Landroid/support/v4/w0;->keyLength:I

    return-void
.end method

.method public static getAesKeyStrengthFromRawCode(I)Landroid/support/v4/w0;
    .locals 5

    .line 1
    invoke-static {}, Landroid/support/v4/w0;->values()[Landroid/support/v4/w0;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Landroid/support/v4/w0;->getRawCode()I

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

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/w0;
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/w0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/w0;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/w0;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/w0;->do:[Landroid/support/v4/w0;

    invoke-virtual {v0}, [Landroid/support/v4/w0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/w0;

    return-object v0
.end method


# virtual methods
.method public getKeyLength()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/w0;->keyLength:I

    return v0
.end method

.method public getMacLength()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/w0;->macLength:I

    return v0
.end method

.method public getRawCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/w0;->rawCode:I

    return v0
.end method

.method public getSaltLength()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/w0;->saltLength:I

    return v0
.end method
