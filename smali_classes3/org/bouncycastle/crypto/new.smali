.class public abstract enum Lorg/bouncycastle/crypto/new;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CharToByteConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/new;",
        ">;",
        "Lorg/bouncycastle/crypto/CharToByteConverter;"
    }
.end annotation


# static fields
.field public static final enum ASCII:Lorg/bouncycastle/crypto/new;

.field public static final enum PKCS12:Lorg/bouncycastle/crypto/new;

.field public static final enum UTF8:Lorg/bouncycastle/crypto/new;

.field private static final synthetic do:[Lorg/bouncycastle/crypto/new;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/bouncycastle/crypto/new$do;

    const-string v1, "ASCII"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/new$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/new;->ASCII:Lorg/bouncycastle/crypto/new;

    new-instance v1, Lorg/bouncycastle/crypto/new$if;

    const-string v3, "UTF8"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/crypto/new$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/bouncycastle/crypto/new;->UTF8:Lorg/bouncycastle/crypto/new;

    new-instance v3, Lorg/bouncycastle/crypto/new$for;

    const-string v5, "PKCS12"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/bouncycastle/crypto/new$for;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/bouncycastle/crypto/new;->PKCS12:Lorg/bouncycastle/crypto/new;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/bouncycastle/crypto/new;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/bouncycastle/crypto/new;->do:[Lorg/bouncycastle/crypto/new;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/bouncycastle/crypto/new$do;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/new;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/new;
    .locals 1

    const-class v0, Lorg/bouncycastle/crypto/new;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/new;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/new;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/new;->do:[Lorg/bouncycastle/crypto/new;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/new;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/new;

    return-object v0
.end method
