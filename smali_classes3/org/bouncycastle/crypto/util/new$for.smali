.class public final enum Lorg/bouncycastle/crypto/util/new$for;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/util/new$for;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BILATERALU:Lorg/bouncycastle/crypto/util/new$for;

.field public static final enum BILATERALV:Lorg/bouncycastle/crypto/util/new$for;

.field public static final enum UNILATERALU:Lorg/bouncycastle/crypto/util/new$for;

.field public static final enum UNILATERALV:Lorg/bouncycastle/crypto/util/new$for;

.field private static final synthetic do:[Lorg/bouncycastle/crypto/util/new$for;


# instance fields
.field private final enc:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/bouncycastle/crypto/util/new$for;

    const-string v1, "UNILATERALU"

    const/4 v2, 0x0

    const-string v3, "KC_1_U"

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/util/new$for;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/new$for;->UNILATERALU:Lorg/bouncycastle/crypto/util/new$for;

    new-instance v1, Lorg/bouncycastle/crypto/util/new$for;

    const-string v3, "UNILATERALV"

    const/4 v4, 0x1

    const-string v5, "KC_1_V"

    invoke-direct {v1, v3, v4, v5}, Lorg/bouncycastle/crypto/util/new$for;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/crypto/util/new$for;->UNILATERALV:Lorg/bouncycastle/crypto/util/new$for;

    new-instance v3, Lorg/bouncycastle/crypto/util/new$for;

    const-string v5, "BILATERALU"

    const/4 v6, 0x2

    const-string v7, "KC_2_U"

    invoke-direct {v3, v5, v6, v7}, Lorg/bouncycastle/crypto/util/new$for;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/bouncycastle/crypto/util/new$for;->BILATERALU:Lorg/bouncycastle/crypto/util/new$for;

    new-instance v5, Lorg/bouncycastle/crypto/util/new$for;

    const-string v7, "BILATERALV"

    const/4 v8, 0x3

    const-string v9, "KC_2_V"

    invoke-direct {v5, v7, v8, v9}, Lorg/bouncycastle/crypto/util/new$for;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/bouncycastle/crypto/util/new$for;->BILATERALV:Lorg/bouncycastle/crypto/util/new$for;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/bouncycastle/crypto/util/new$for;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/bouncycastle/crypto/util/new$for;->do:[Lorg/bouncycastle/crypto/util/new$for;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/bouncycastle/crypto/util/new$for;->enc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/util/new$for;
    .locals 1

    const-class v0, Lorg/bouncycastle/crypto/util/new$for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/util/new$for;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/util/new$for;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/util/new$for;->do:[Lorg/bouncycastle/crypto/util/new$for;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/util/new$for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/util/new$for;

    return-object v0
.end method


# virtual methods
.method public getHeader()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/new$for;->enc:Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/util/for;->goto(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
